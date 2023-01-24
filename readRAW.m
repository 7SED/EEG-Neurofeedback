function mysig = readRAW

	%% Essential Data
	%run this function to connect and plot raw EEG data
	%make sure to change portnum1 to the appropriate COM port

	clear all;
	close all;
	warning off;
	counter = 0;
	feature_freq = [19];
	feature_power = [19];
	time = 0.5 * 60; % Duration of data recording (s).
	fs = 512;
	total_pow = 0;
	data = zeros(1,256); %preallocate buffer
	portnum1 = 5; %COM Port #
	comPortName1 = sprintf('\\\\.\\COM%d', portnum1);

	% Baud rate for use with TG_Connect() and TG_SetBaudrate().
	TG_BAUD_57600 = 57600;

	% Data format for use with TG_Connect() and TG_SetDataFormat().
	TG_STREAM_PACKETS = 0;

	% Data type that can be requested from TG_GetValue().
	TG_DATA_RAW = 4;

	%load thinkgear dll
	loadlibrary('thinkgear64.dll','thinkgear64.h');
	fprintf('thinkgear64.dll loaded\n');

	%get dll version
	dllVersion = calllib('thinkgear64', 'TG_GetDriverVersion');
	fprintf('ThinkGear DLL version: %d\n', dllVersion );

	%% TGAM Connection
	% Get a connection ID handle to ThinkGear
	connectionId1 = calllib('thinkgear64', 'TG_GetNewConnectionId');
	if ( connectionId1 < 0 )
		error( sprintf( 'ERROR: TG_GetNewConnectionId() returned %d.\n', connectionId1 ) );
	end;

	% Set/open stream (raw bytes) log file for connection
	errCode = calllib('thinkgear64', 'TG_SetStreamLog', connectionId1, 'streamLog.txt' );
		if( errCode < 0 )
				error( sprintf( 'ERROR: TG_SetStreamLog() returned %d.\n', errCode ) );
		end;

	% Set/open data (ThinkGear values) log file for connection
	errCode = calllib('thinkgear64', 'TG_SetDataLog', connectionId1, 'dataLog.txt' );
		if( errCode < 0 )
				error( sprintf( 'ERROR: TG_SetDataLog() returned %d.\n', errCode ) );
		end;
	% Attempt to connect the connection ID handle to serial port "COM3"
	errCode = calllib('thinkgear64', 'TG_Connect',
	connectionId1,comPortName1,TG_BAUD_57600,TG_STREAM_PACKETS );
	if ( errCode < 0 )
		error( sprintf( 'ERROR: TG_Connect() returned %d.\n', errCode ) );
	end
	fprintf( 'Connected. Reading Packets...\n' );

	%%
	%% Filter Design
	% % % High Pass
	[data,d3] = highpass(data,3,fs,'ImpulseResponse','iir','Steepness',0.95);

	% % % Low Pass
	[data,d2] = lowpass(data,35,fs,'ImpulseResponse','iir','Steepness',0.95);

	% % % Notch
	d = designfilt('bandstopiir','FilterOrder',2, ...
	'HalfPowerFrequency1',49,'HalfPowerFrequency2',51, ...
	'DesignMethod','butter','SampleRate',fs);
	data = filtfilt(d,data);


	%% Record Data
	%record data
	mysig = [];
	k = 0;
	j = 0;
	i = 0;
	m = 1;

	while (i < time*fs)
		if (calllib('thinkgear64','TG_ReadPackets',connectionId1,1) == 1) %if a packet was read...

			pause(0.000001)
			if (calllib('thinkgear64','TG_GetValueStatus',connectionId1,TG_DATA_RAW) ~= 0) %if RAW has been updated
				j = j + 1;
				i = i + 1;
				k = k + 1;

				pause(0.000001)
				data(j) = calllib('thinkgear64','TG_GetValue',connectionId1,TG_DATA_RAW);
				data(k) = data(j);
				mysig = [mysig, data(j)];
			end
		end

	 %% Plot Data
		if (j == 255)

			plotRAW(fs,data); %plot the data, update every .5 seconds (256 points)
			j = 0;
		end
	end

	save mysig;

 %disconnect
calllib('thinkgear64', 'TG_FreeConnection', connectionId1 );

function plotRAW(fs,data)
	%this subfunction is used to plot EEG data
	plot(data)
	axis([0 255 -2000 2000])
drawnow;
