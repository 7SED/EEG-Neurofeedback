lassdef ProjectApp < matlab.apps.AppBase
 % Properties that correspond to app components
 properties (Access = public)
 GUIUIFigure matlab.ui.Figure
 Panel_2 matlab.ui.container.Panel
 StopButton matlab.ui.control.Button
 TabGroup matlab.ui.container.TabGroup
 InputTab matlab.ui.container.Tab
 InputSignalButtonGroup matlab.ui.container.ButtonGroup
 SelectTestDataButton matlab.ui.control.Button
 RecordedSignalCheckBox matlab.ui.control.CheckBox
 RealTimeRecordingCheckBox matlab.ui.control.CheckBox
 SamplingrateEditFieldLabel matlab.ui.control.Label
 SamplingrateEditField matlab.ui.control.NumericEditField
 HzLabel matlab.ui.control.Label
 fs_show matlab.ui.control.Label
 data_show matlab.ui.control.Label
 FeedbackTab matlab.ui.container.Tab
 TypeButtonGroup matlab.ui.container.ButtonGroup
 AudioCheckBox matlab.ui.control.CheckBox
 VisualCheckBox matlab.ui.control.CheckBox
 AudioVisualCheckBox matlab.ui.control.CheckBox
 GameModePanel matlab.ui.container.Panel
 SelectGameDropDown matlab.ui.control.DropDown
 ProtocolTab matlab.ui.container.Tab
 ProtocolButtonGroup matlab.ui.container.ButtonGroup
 ThetaBetatrainingCheckBox matlab.ui.control.CheckBox
 SCPtrainingCheckBox matlab.ui.control.CheckBox
 SMRtrainingCheckBox matlab.ui.control.CheckBox
 ReferenceButtonGroup matlab.ui.container.ButtonGroup
 BaselineCheckBox matlab.ui.control.CheckBox
 ResultsTab matlab.ui.container.Tab
 AverageAttentionLevel matlab.ui.control.Label
 AALLabel matlab.ui.control.Label
 ButtonImage_2 matlab.ui.control.Button
 Panel matlab.ui.container.Panel
 StartButton matlab.ui.control.Button
 ButtonImage matlab.ui.control.Button
 end

 properties (Access = public)


 FlagStartTestLoop=0
 handles
 handles1
 Counter = 5;
 SoundVolume = 0.3;
 GifDelay = 0.01;
 Audiodelay = 1;
 imageDelay = 1;

 player = 0;

 data
 File_path_name
 selectedfile

 CounterFrame = 1;
 ValueCheckedOffline = 1;

 GameSelect = 19;
 FeatureSelect = 1;
 CounterCheckFinal = 0;
 CounterOffline = 0;
 CounterBaseline = 0;
 CounterFeedback = 0;
 CounterTime = 0;

 OfflineDataChain = zeros();

 ValueCheckedOnline = 0;
 AudioTestChecked = 1;
 VideoTestChecked = 0;
 AVTestChecked = 0;
 ThetaBetatrainingChecked = 1;
 SCPtrainingChecked = 0;

 RoundGame = 0;
 TimerRange1=
{51000,60000,49000,49000,42000,37000,51000,58000,61000,59000,52000,59000,79000,51000,49000,50000,5100
0,51000,60000};
 CounterImage
={1524,1792,1480,1467,1248,1098,1530,1735,2077,1773,1563,1758,2283,1528,1464,1503,17293,143,73};

 StartAudio = 0;
 StartPic = 0;

 Baseline = 0;
 Feedback = 0;
 BaselineValue = 0;


 Ref2Value = 1;
 FinalValueForCheck = 0;

 offlinedata;
 fs = 0;
 welch_window_size = 0;

 featureValue = 0;

 deltaBand = 0;
 thetaBand = 0;
 alphaBand = 0;
 betaBand = 0;
 slowAlphaBand = 0;
 gammaBand = 0;
 SMRBand = 0;

 end

 methods (Access = private)
 % Code that executes after component creation
 function startupFcn(app)
 app.TypeButtonGroup.Visible = true;
 app.ReferenceButtonGroup.Visible = true;
 app.SelectGameDropDown.Enable = false;
 app.Panel.Visible = true;
 app.GameModePanel.Visible = true;
 app.InputSignalButtonGroup.Visible = true;
 app.ButtonImage.Visible = false;
 app.Panel_2.Visible = false;
 app.CounterImage
=[1524,1792,1480,1467,1248,1098,1530,1735,2077,1773,1563,1758,2283,1528,1464,1503,7786,143,73];


 app.handles.timer1 = timer('Name','MyTimer1', ...
 'Period',0.002, ...
 'StartDelay',0, ...
 'TasksToExecute',inf, ...
 'ExecutionMode','fixedSpacing', ...
 'TimerFcn',@NameOfFun);

 app.handles.timer2 = timer('Name','MyTimer2', ...
 'Period',0.001, ...
 'StartDelay',0, ...
 'TasksToExecute',inf, ...
 'ExecutionMode','fixedSpacing', ...
 'TimerFcn',@NameOfFun1);

 function NameOfFun1(~,~)
 if(app.ValueCheckedOffline == 1 && app.CounterOffline < length(app.data))

 app.CounterOffline = app.CounterOffline + 1;
 FinalValueForCheck = 0;

 offlinedata;
 fs = 0;
 welch_window_size = 0;

 featureValue = 0;

 deltaBand = 0;
 thetaBand = 0;
 alphaBand = 0;
 betaBand = 0;
 slowAlphaBand = 0;
 gammaBand = 0;
 SMRBand = 0;

 end

 methods (Access = private)
 % Code that executes after component creation
 function startupFcn(app)
 app.TypeButtonGroup.Visible = true;
 app.ReferenceButtonGroup.Visible = true;
 app.SelectGameDropDown.Enable = false;
 app.Panel.Visible = true;
 app.GameModePanel.Visible = true;
 app.InputSignalButtonGroup.Visible = true;
 app.ButtonImage.Visible = false;
 app.Panel_2.Visible = false;
 app.CounterImage
=[1524,1792,1480,1467,1248,1098,1530,1735,2077,1773,1563,1758,2283,1528,1464,1503,7786,143,73];


 app.handles.timer1 = timer('Name','MyTimer1', ...
 'Period',0.002, ...
 'StartDelay',0, ...
 'TasksToExecute',inf, ...
 'ExecutionMode','fixedSpacing', ...
 'TimerFcn',@NameOfFun);

 app.handles.timer2 = timer('Name','MyTimer2', ...
 'Period',0.001, ...
 'StartDelay',0, ...
 'TasksToExecute',inf, ...
 'ExecutionMode','fixedSpacing', ...
 'TimerFcn',@NameOfFun1);

 function NameOfFun1(~,~)
 if(app.ValueCheckedOffline == 1 && app.CounterOffline < length(app.data))

 app.CounterOffline = app.CounterOffline + 1;
 app.CounterBaseline = app.CounterBaseline + 1;
 app.CounterFeedback = app.CounterFeedback + 1;
 app.CounterTime = app.CounterTime + 1;


 if (1i == 0)
 app.OfflineDataChain(1:1i) = app.offlinedata(1:app.CounterOffline);
 else
 app.OfflineDataChain(11:1i) = app.OfflineDataChain(1:1i) +
app.offlinedata(1:app.CounterOffline);
 end

%%%%%%%%%%% ----------------- FEATURE EXTRACTING --------------------------------------- %%%%%%%%%%%



[PowerTrial, fTrial] = pwelch(app.OfflineDataChain, app.welch_window_size , [], [], app.fs);
 app.thetaBand = log(sum(PowerTrial(4 <= fTrial & fTrial <= 8)));
 app.betaBand = log(sum(PowerTrial(12 <= fTrial & fTrial <= 30)));
 app.SMRBand = log(sum(PowerTrial(12 <= fTrial & fTrial <= 15)));


%%%%%% ----- TBR :
 if (app.FeatureSelect == 1)
 app.featureValue = app.thetaBand / app.betaBand;
 end

%%%%%% ----- SMR :
 if (app.FeatureSelect == 2)
 app.featureValue = app.thetaBand / app.SMRBand;
 end
%%%%%% ----- SCP :
 if (app.FeatureSelect == 3)
 if (fTrial < 2)
 app.featureValue = mean (app.OfflineDataChain(1i));
 end
 end

%%%%%% ------------------------------------------------------------------------------------- %%%%%%
%%%%%% Here we are going to calculate baseline value at first 5 seconds;
%%%%%% Then calculate feedbach value for next 60s.
%%%%%% Then we will zero them for next minute and new feedback.
%%%%%% ...
 if (app.CounterTime <= 65 * app.fs)
 if (app.CounterBaseline == 5 * app.fs && app.CounterTime <= 5 * app.fs )
 app.BaselineValue = app.featureValue;
 app.Feedback = app.featureValue;
 app.CounterBaseline = 0;
 elseif (app.CounterTime > 5 * app.fs)
  app.Feedback = app.featureValue;
 end


 if (app.CounterTime == 65 * app.fs)
 app.CounterTime = 0;
app.BaselineValue = 0;
 app.Feedback = 0;
 app.OfflineDataChain = 0;
 end
 end

 app.CounterCheckFinal = app.CounterCheckFinal + 1;
 else
 app.CounterOffline = app.CounterOffline + 1;
 app.OfflineDataChain = app.OfflineDataChain + readRAW();
 app.CounterCheckFinal = app.CounterCheckFinal + 1;
 end
 end

%%%%%%%%%%% ----------------- FEEDBACKS -------------------------------------------------%%%%%%%%%%%

 function NameOfFun(~,~)
 if(app.FlagStartTestLoop == 1)
 app.Panel_2.Visible = true;
 app.ButtonImage_2.Visible = false;
 num1 = num2str(app.GameSelect);

 if(app.StartAudio == 0 && app.GameSelect < 19)
 app.TabGroup.Visible = false;
 app.StartAudio = 1;
 nombre1 = strcat('H:\Shiva\',num1,'\Output_Merge(',num1,').mp3');
 [y,Fs] = audioread(nombre1);
 app.player = audioplayer(y, Fs);
 play(app.player,[0 (get(app.player, 'SampleRate')*150)]);
 end


%%%%%% ----- Audio Visual :
 if(app.StartPic < app.CounterImage(app.GameSelect) && app.GameSelect < 19)
 app.TabGroup.Visible = false;
 app.StartPic = app.StartPic + 1;
 num = num2str(app.StartPic);
 nombre = strcat('H:\Shiva\',num1,'\',num1,' (',num,').jpg');
 app.ButtonImage.Icon = nombre;

 while (app.BaselineValue < app.Feedback)
 stop(app.player);
 end
else
 if(app.GameSelect < 17)
 app.TabGroup.Visible = false;
app.StartPic = 0;
app.GameSelect = randi([1 16]);
 nombre1 = strcat('H:\Shiva\',num1,'\Output_Merge(',num1,').mp3');
 [y,Fs] = audioread(nombre1);
app.player = audioplayer(y, Fs);
play(app.player,[0 (get(app.player, 'SampleRate')*150)]);
 app.ButtonImage.Icon = 'blackbg.jpg';
 pause(60);
while (app.BaselineValue < app.Feedback)
 stop(app.player);
 end
 elseif(app.GameSelect == 17)
 app.TabGroup.Visible = false;
app.StartPic = 0;
 app.ButtonImage.Icon = 'Logo.png';
 app.TypeButtonGroup.Visible = false;
app.ReferenceButtonGroup.Visible = false;
app.Panel.Visible = false;
 app.GameModePanel.Visible = false;
 app.InputSignalButtonGroup.Visible = true;
app.ButtonImage.Visible = false;
app.Panel_2.Visible = false;

 stop(app.handles.timer1);
[~,Fs] = audioread('Output_Merge(17).mp3');
app.CounterOffline=0;
app.player = audioplayer(0, Fs);

 while (app.BaselineValue < app.Feedback)
 stop(app.player);
 end
if(app.FlagStartTestLoop == 1)
 app.FlagStartTestLoop = 0;
stop([app.handles.timer1 app.handles.timer2]);
 play(app.player,[80000 (get(app.player, 'SampleRate')*15)]);
 end



%%%%%% ----- Audio :
 elseif(app.GameSelect == 18)
 app.TabGroup.Visible = false;
app.StartPic = 0;
 app.ButtonImage.Icon = 'Logo.png';
 app.TypeButtonGroup.Visible = false;
 app.ReferenceButtonGroup.Visible = false;
app.Panel.Visible = false;
 app.GameModePanel.Visible = false;
 app.InputSignalButtonGroup.Visible = true;
app.ButtonImage.Visible = false;
app.Panel_2.Visible = false;

 stop(app.handles.timer1);
[~,Fs] = audioread('Output_Merge(18).mp3');
app.CounterOffline=0;
app.player = audioplayer(0, Fs);

 stop(app.player);
while (app.BaselineValue < app.Feedback)
 stop(app.player);
app.SoundVolume(0);
 end
if(app.FlagStartTestLoop == 1)
 app.FlagStartTestLoop = 0;
stop([app.handles.timer1 app.handles.timer2]);
 play(app.player,[80000 (get(app.player, 'SampleRate')*150)]);
 end
 end

%%%%%% ----- Visual :
 if(app.GameSelect == 19)

app.TabGroup.Visible = false;
app.GameSelect = 19;
app.ButtonImage.Visible = true;
app.ButtonImage.Icon = 'bgv.jpg';
 app.StartPic = app.StartPic - 1;
 num = num2str(app.StartPic);
nombre = strcat('H:\Shiva\',num1,'\',num1,' (',num,').jpg');

app.ButtonImage.Icon = nombre;
app.AverageAttentionLevel.Text = num;
if(app.StartPic == -14)
 app.StartPic = 58;
 end
if(app.BaselineValue > app.Feedback)
 app.StartPic = app.StartPic - 1;
 num = num2str(app.StartPic);
nombre = strcat('H:\Shiva\',num1,'\',num1,' (',num,').jpg');

app.ButtonImage.Icon = nombre;
if(app.StartPic >= app.CounterImage(app.GameSelect))
 app.StartPic = 0;
 end
 else
 app.StartPic = app.StartPic + 1;
 num = num2str(app.StartPic);
nombre = strcat('H:\Shiva\',num1,'\',num1,' (',num,').jpg');

 app.ButtonImage.Icon = nombre;
 pause(0.1);
if(app.StartPic == -14)
 app.StartPic = 58;
 end
 end
 end
 end
 end
 end

 end
 % Button pushed function: StopButton
 function StopButtonPushed(app, event)
 app.TabGroup.Visible = true;
 app.ButtonImage_2.Visible = true;
 app.TypeButtonGroup.Visible = true;
 app.ReferenceButtonGroup.Visible = true;
 app.Panel.Visible = true;
 app.GameModePanel.Visible = true;
 app.InputSignalButtonGroup.Visible = true;

 app.CounterCheckFinal = 0;
 app.CounterOffline = 0;
 app.CounterBaseline = 0;
 app.CounterFeedback = 0;
 app.CounterTime = 0;
 app.ButtonImage.Visible = false;
 app.Panel_2.Visible = false;
 stop(app.handles.timer1);
 stop([app.handles.timer1 app.handles.timer2]);

 [~,Fs] = audioread('1.mp3');
 app.player = audioplayer(0, Fs);

 if(app.FlagStartTestLoop == 1)
 app.FlagStartTestLoop = 0;
stop([app.handles.timer1 app.handles.timer2]);
 play(app.player,[80000 (get(app.player, 'SampleRate')*15)]);
 end
 end
 % Close request function: GUIUIFigure
 function GUIUIFigureCloseRequest(app, event)
 if(app.FlagStartTestLoop == 1)
 stop(app.handles.timer1);
 app.FlagStartTestLoop = 0;
 end
 delete(app)
 end
 % Button pushed function: SelectTestDataButton
 function SelectFile(app, event)
 [File_name, File_path]=uigetfile('*.mat', 'Select the File');
 app.File_path_name=[File_path, File_name];
 app.offlinedata = load(app.File_path_name);
 nombre = num2str(app.File_path_name);
 nombre = strcat(nombre);
 app.data_show.Text = nombre;

 app.offlinedata = cell2mat(struct2cell(app.offlinedata));
 app.welch_window_size = app.fs * 15;
 app.offlinedata = detrend(app.offlinedata);
 end
 % Value changed function: RecordedSignalCheckBox
 function OfflineCheked2(app, event)
 app.ValueCheckedOffline = app.RecordedSignalCheckBox.Value;
 if(app.ValueCheckedOffline == 1 )
 app.RealTimeRecordingCheckBox.Value = 0;
 app.SelectTestDataButton.Enable = true;
 app.SamplingrateEditField.Enable = true;
 app.ValueCheckedOnline = 0;
 SelectFile (app, event);


 else
 app.RecordedSignalCheckBox.Value = 1;
 app.ValueCheckedOffline = 1;
 end
 end
 % Value changed function: RealTimeRecordingCheckBox
 function Online_Cheked2(app, event)
 app.ValueCheckedOnline = app.RealTimeRecordingCheckBox.Value;
 if(app.ValueCheckedOnline == 1 )
 app.RecordedSignalCheckBox.Value = 0;
 app.SelectTestDataButton.Enable = false;
 app.SamplingrateEditField.Enable = true;
 app.ValueCheckedOffline = 0;
 readRAW();

 else
 app.RealTimeRecordingCheckBox.Value = 0;
 app.ValueCheckedOnline = 0;
 end
 end
 % Button pushed function: StartButton
 function StartPush(app, event)
 app.TypeButtonGroup.Visible = false;
 app.ReferenceButtonGroup.Visible = false;
 app.Panel.Visible = false;
 app.GameModePanel.Visible = false;
 app.CounterOffline=0;
 app.InputSignalButtonGroup.Visible = false;

 app.ButtonImage.Visible = true;
 app.Panel_2.Visible = false;
 app.StartAudio = 0;
 app.StartPic = 0;

 if(app.SelectGameDropDown.Value == "Continuous" && app.AVTestChecked == 1)
 app.GameSelect = 17;
 elseif(app.SelectGameDropDown.Value == "Go Rest Repeat" && app.AVTestChecked == 1)
 app.GameSelect = randi([1 16]);
 elseif(app.VideoTestChecked == 1)
 app.GameSelect = 19;
 elseif( app.AudioTestChecked == 1)
 app.GameSelect = 18;
 end

 if(app.ThetaBetatrainingChecked == 1)
 app.FeatureSelect = 1;
 elseif(app.SMRtrainingChecked == 1)
 app.FeatureSelect = 2;
 elseif( app.SCPtrainingChecked == 1)
 app.GameSelect = 3;
 end
 if(app.FlagStartTestLoop == 0)
 app.FlagStartTestLoop = 1;
 start([app.handles.timer1 app.handles.timer2]);
 end
 end
 % Value changed function: SelectGameDropDown
 function SelectGame(app, event)
 value = app.SelectGameDropDown.Value;
 app.GameSelect = value;
 end
 % Value changed function: AudioCheckBox
 function AudioCheckBoxValueChanged(app, event)
 app.AudioTestChecked = app.AudioCheckBox.Value;
 if(app.AudioTestChecked == 1 )
 app.VisualCheckBox.Value = 0;
 app.AudioVisualCheckBox.Value = 0;
 app.VideoTestChecked = 0;
 app.AVTestChecked = 0;
 app.SelectGameDropDown.Enable = false;
 else
 app.AudioCheckBox.Value = 0;
 app.AudioTestChecked = 0;
 end
 end
 % Value changed function: VisualCheckBox
 function VisualCheckBoxValueChanged(app, event)
 app.VideoTestChecked = app.VisualCheckBox.Value;
 if(app.VideoTestChecked == 1 )
 app.AudioCheckBox.Value = 0;
 app.AudioVisualCheckBox.Value = 0;
 app.AudioTestChecked = 0;
 app.AVTestChecked = 0;
 app.SelectGameDropDown.Enable = false;
 else
 app.VideoTestChecked = 0;
 app.VisualCheckBox.Value = 0;
 end
 end
 % Value changed function: AudioVisualCheckBox
 function AudioVisualCheckBoxValueChanged(app, event)
 app.AVTestChecked = app.AudioVisualCheckBox.Value;
 if(app.AVTestChecked == 1 )
 app.AudioCheckBox.Value = 0;
 app.VisualCheckBox.Value = 0;
 app.AudioTestChecked = 0;
 app.VideoTestChecked = 0;
 app.SelectGameDropDown.Enable = true;
 else
 app.AVTestChecked = 0;
 app.AudioVisualCheckBox.Value = 0;
 end
 end
 % Value changed function: ThetaBetatrainingCheckBox
 function ThetaBetatrainingCheckBoxValueChanged(app, event)
 app.ThetaBetatrainingChecked = app.ThetaBetatrainingCheckBox.Value;
 if(app.ThetaBetatrainingChecked == 1 )
 app.SCPtrainingCheckBox.Value = 0;
 app.SMRtrainingCheckBox.Value = 0;
 end
 end
 % Value changed function: SCPtrainingCheckBox
 function SCPtrainingCheckBoxValueChanged(app, event)
 app.SCPtrainingChecked = app.SCPtrainingCheckBox.Value;
 if(app.SCPtrainingChecked == 1 )
 app.ThetaBetatrainingCheckBox.Value = 0;
 app.SMRtrainingChecked.Value = 0;
 end
 end
 % Value changed function: SamplingrateEditField
 function SamplingrateEditFieldValueChanged(app, event)
 app.fs = app.SamplingrateEditField.Value;

 nombre = num2str(app.fs);
 nombre = strcat('fs = ',nombre);
 app.fs_show.Text = nombre;
 end
 % Value changed function: SMRtrainingCheckBox
 function SMRtrainingCheckBoxValueChanged(app, event)
 app.SMRtrainingChecked = app.SMRtrainingCheckBox.Value;
 if(app.SMRtrainingChecked == 1 )
 app.ThetaBetatrainingCheckBox.Value = 0;
 app.SCPtrainingChecked.Value = 0;
 end
 end
 end
 % App initialization and construction
 methods (Access = private)
 % Create UIFigure and components
 function createComponents(app)
 % Create GUIUIFigure
 app.GUIUIFigure = uifigure;
 app.GUIUIFigure.AutoResizeChildren = 'off';
 app.GUIUIFigure.Color = [1 1 1];
 app.GUIUIFigure.Position = [100 100 723 519];
 app.GUIUIFigure.Name = 'GUI';
 app.GUIUIFigure.Resize = 'off';
 app.GUIUIFigure.CloseRequestFcn = createCallbackFcn(app, @GUIUIFigureCloseRequest, true);
 % Create Panel_2
 app.Panel_2 = uipanel(app.GUIUIFigure);
 app.Panel_2.AutoResizeChildren = 'off';
 app.Panel_2.BorderType = 'none';
 app.Panel_2.BackgroundColor = [1 1 1];
 app.Panel_2.Position = [260 4 207 83];
 % Create StopButton
 app.StopButton = uibutton(app.Panel_2, 'push');
 app.StopButton.ButtonPushedFcn = createCallbackFcn(app, @StopButtonPushed, true);
 app.StopButton.BackgroundColor = [0.4706 0.6706 0.1882];
 app.StopButton.FontColor = [1 1 1];
 app.StopButton.Position = [68 22 79 40];
 app.StopButton.Text = 'Stop';
 % Create TabGroup
 app.TabGroup = uitabgroup(app.GUIUIFigure);
 app.TabGroup.AutoResizeChildren = 'off';
 app.TabGroup.Position = [45 70 642 324];
 % Create InputTab
 app.InputTab = uitab(app.TabGroup);
 app.InputTab.AutoResizeChildren = 'off';
 app.InputTab.Title = ' Input ';
 % Create InputSignalButtonGroup
 app.InputSignalButtonGroup = uibuttongroup(app.InputTab);
 app.InputSignalButtonGroup.AutoResizeChildren = 'off';
 app.InputSignalButtonGroup.BorderType = 'none';
 app.InputSignalButtonGroup.Title = 'Input Signal:';
 app.InputSignalButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
 app.InputSignalButtonGroup.FontName = 'Calibri';
 app.InputSignalButtonGroup.FontSize = 15;
 app.InputSignalButtonGroup.Position = [35 43 560 215];
 % Create SelectTestDataButton
 app.SelectTestDataButton = uibutton(app.InputSignalButtonGroup, 'push');
 app.SelectTestDataButton.ButtonPushedFcn = createCallbackFcn(app, @SelectFile, true);
 app.SelectTestDataButton.BackgroundColor = [0 0.451 0.7412];
 app.SelectTestDataButton.FontColor = [1 1 1];
 app.SelectTestDataButton.Position = [105 69 106 40];
 app.SelectTestDataButton.Text = 'Select Test Data';
 % Create RecordedSignalCheckBox
 app.RecordedSignalCheckBox = uicheckbox(app.InputSignalButtonGroup);
 app.RecordedSignalCheckBox.ValueChangedFcn = createCallbackFcn(app, @OfflineCheked2,
true);
 app.RecordedSignalCheckBox.Text = {'Recorded Signal'; ''};
 app.RecordedSignalCheckBox.FontName = 'Calibri Light';
 app.RecordedSignalCheckBox.FontSize = 15;
 app.RecordedSignalCheckBox.FontColor = [0.149 0.149 0.149];
 app.RecordedSignalCheckBox.Position = [17 122 118 22];
 app.RecordedSignalCheckBox.Value = true;
 % Create RealTimeRecordingCheckBox
 app.RealTimeRecordingCheckBox = uicheckbox(app.InputSignalButtonGroup);
 app.RealTimeRecordingCheckBox.ValueChangedFcn = createCallbackFcn(app, @Online_Cheked2,
true);
 app.RealTimeRecordingCheckBox.Text = {'Real-Time Recording'; ''};
 app.RealTimeRecordingCheckBox.FontName = 'Calibri Light';
 app.RealTimeRecordingCheckBox.FontSize = 15;
 app.RealTimeRecordingCheckBox.FontColor = [0.149 0.149 0.149];
 app.RealTimeRecordingCheckBox.Position = [16 157 145 22];
 % Create SamplingrateEditFieldLabel
 app.SamplingrateEditFieldLabel = uilabel(app.InputSignalButtonGroup);
 app.SamplingrateEditFieldLabel.HorizontalAlignment = 'right';
 app.SamplingrateEditFieldLabel.FontName = 'Calibri Light';
 app.SamplingrateEditFieldLabel.FontSize = 15;
 app.SamplingrateEditFieldLabel.Position = [32 18 91 22];
 app.SamplingrateEditFieldLabel.Text = 'Sampling rate:';
 % Create SamplingrateEditField
 app.SamplingrateEditField = uieditfield(app.InputSignalButtonGroup, 'numeric');
 app.SamplingrateEditField.Limits = [0 Inf];
 app.SamplingrateEditField.ValueDisplayFormat = '%.0f';
 app.SamplingrateEditField.ValueChangedFcn = createCallbackFcn(app,
@SamplingrateEditFieldValueChanged, true);
 app.SamplingrateEditField.HorizontalAlignment = 'center';
 app.SamplingrateEditField.Position = [138 18 86 22];
 % Create HzLabel
 app.HzLabel = uilabel(app.InputSignalButtonGroup);
 app.HzLabel.Position = [232 18 28 22];
 app.HzLabel.Text = '(Hz)';
 % Create fs_show
 app.fs_show = uilabel(app.InputSignalButtonGroup);
 app.fs_show.FontName = 'Cambria Math';
 app.fs_show.Position = [287 7 92 47];
 app.fs_show.Text = ' ';
 % Create data_show
 app.data_show = uilabel(app.InputSignalButtonGroup);
 app.data_show.FontName = 'Cambria Math';
 app.data_show.Position = [287 66 274 47];
 app.data_show.Text = ' ';
 % Create FeedbackTab
 app.FeedbackTab = uitab(app.TabGroup);
 app.FeedbackTab.AutoResizeChildren = 'off';
 app.FeedbackTab.Title = ' Feedback ';
 % Create TypeButtonGroup
 app.TypeButtonGroup = uibuttongroup(app.FeedbackTab);
 app.TypeButtonGroup.AutoResizeChildren = 'off';
 app.TypeButtonGroup.BorderType = 'none';
 app.TypeButtonGroup.Title = 'Type:';
 app.TypeButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
 app.TypeButtonGroup.FontName = 'Calibri';
 app.TypeButtonGroup.FontSize = 15;
 app.TypeButtonGroup.Position = [35 123 206 135];
 % Create AudioCheckBox
 app.AudioCheckBox = uicheckbox(app.TypeButtonGroup);
 app.AudioCheckBox.ValueChangedFcn = createCallbackFcn(app, @AudioCheckBoxValueChanged,
true);
 app.AudioCheckBox.Text = 'Audio';
 app.AudioCheckBox.FontName = 'Calibri Light'
 app.AudioCheckBox.FontSize = 15;
 app.AudioCheckBox.FontColor = [0.149 0.149 0.149];
 app.AudioCheckBox.Position = [14 77 57 22];
 app.AudioCheckBox.Value = true;
 % Create VisualCheckBox
 app.VisualCheckBox = uicheckbox(app.TypeButtonGroup);
 app.VisualCheckBox.ValueChangedFcn = createCallbackFcn(app, @VisualCheckBoxValueChanged,
true);
 app.VisualCheckBox.Text = {'Visual'; ''};
 app.VisualCheckBox.FontName = 'Calibri Light';
 app.VisualCheckBox.FontSize = 15;
 app.VisualCheckBox.FontColor = [0.149 0.149 0.149];
 app.VisualCheckBox.Position = [14 41 58 22];
 % Create AudioVisualCheckBox
 app.AudioVisualCheckBox = uicheckbox(app.TypeButtonGroup);
 app.AudioVisualCheckBox.ValueChangedFcn = createCallbackFcn(app,
@AudioVisualCheckBoxValueChanged, true);
 app.AudioVisualCheckBox.Text = 'Audio Visual';
 app.AudioVisualCheckBox.FontName = 'Calibri Light';
 app.AudioVisualCheckBox.FontSize = 15;
 app.AudioVisualCheckBox.FontColor = [0.149 0.149 0.149];
 app.AudioVisualCheckBox.Position = [14 5 96 22];
 % Create GameModePanel
 app.GameModePanel = uipanel(app.FeedbackTab);
 app.GameModePanel.AutoResizeChildren = 'off';
 app.GameModePanel.BorderType = 'none';
 app.GameModePanel.Title = 'Game Mode';
 app.GameModePanel.BackgroundColor = [0.9412 0.9412 0.9412];
 app.GameModePanel.FontName = 'Calibri';
 app.GameModePanel.FontSize = 15;
 app.GameModePanel.Position = [35 23 206 81];
 % Create SelectGameDropDown
 app.SelectGameDropDown = uidropdown(app.GameModePanel);
 app.SelectGameDropDown.Items = {'Go Rest Repeat', 'Continuous'};
 app.SelectGameDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectGame, true);
 app.SelectGameDropDown.Position = [15 16 132 25];
 app.SelectGameDropDown.Value = 'Go Rest Repeat';
 % Create ProtocolTab
 app.ProtocolTab = uitab(app.TabGroup);
 app.ProtocolTab.Title = ' Protocol ';
 % Create ProtocolButtonGroup
 app.ProtocolButtonGroup = uibuttongroup(app.ProtocolTab);
 app.ProtocolButtonGroup.AutoResizeChildren = 'off';
 app.ProtocolButtonGroup.BorderType = 'none';
 app.ProtocolButtonGroup.Title = 'Protocol';
 app.ProtocolButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
 app.ProtocolButtonGroup.FontName = 'Calibri';
 app.ProtocolButtonGroup.FontSize = 15;
 app.ProtocolButtonGroup.Position = [35 82 206 176];
 % Create ThetaBetatrainingCheckBox
 app.ThetaBetatrainingCheckBox = uicheckbox(app.ProtocolButtonGroup);
 BetatrainingCheckBoxValueChanged, true);
 app.ThetaBetatrainingCheckBox.Text = 'Theta/Beta training';
 app.ThetaBetatrainingCheckBox.FontName = 'Calibri Light';
 app.ThetaBetatrainingCheckBox.FontSize = 15;
 app.ThetaBetatrainingCheckBox.FontColor = [0.149 0.149 0.149];
 app.ThetaBetatrainingCheckBox.Position = [13 118 139 22];
 app.ThetaBetatrainingCheckBox.Value = true;
 % Create SCPtrainingCheckBox
 app.SCPtrainingCheckBox = uicheckbox(app.ProtocolButtonGroup);
 app.SCPtrainingCheckBox.ValueChangedFcn = createCallbackFcn(app,
@SCPtrainingCheckBoxValueChanged, true);
 app.SCPtrainingCheckBox.Text = 'SCP training';
 app.SCPtrainingCheckBox.FontName = 'Calibri Light';
 app.SCPtrainingCheckBox.FontSize = 15;
 app.SCPtrainingCheckBox.FontColor = [0.149 0.149 0.149];
 app.SCPtrainingCheckBox.Position = [13 46 94 22];
 % Create SMRtrainingCheckBox
 app.SMRtrainingCheckBox = uicheckbox(app.ProtocolButtonGroup);
 app.SMRtrainingCheckBox.ValueChangedFcn = createCallbackFcn(app,
@SMRtrainingCheckBoxValueChanged, true);
 app.SMRtrainingCheckBox.Text = 'SMR training';
 app.SMRtrainingCheckBox.FontName = 'Calibri Light';
 app.SMRtrainingCheckBox.FontSize = 15;
 app.SMRtrainingCheckBox.FontColor = [0.149 0.149 0.149];
 app.SMRtrainingCheckBox.Position = [13 82 99 22];
 % Create ReferenceButtonGroup
 app.ReferenceButtonGroup = uibuttongroup(app.ProtocolTab);
 app.ReferenceButtonGroup.AutoResizeChildren = 'off';
 app.ReferenceButtonGroup.BorderType = 'none';
 app.ReferenceButtonGroup.Title = 'Reference:';
 app.ReferenceButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
 app.ReferenceButtonGroup.FontName = 'Calibri';
 app.ReferenceButtonGroup.FontSize = 15;
 app.ReferenceButtonGroup.Position = [316 165 206 93];
 % Create BaselineCheckBox
 app.BaselineCheckBox = uicheckbox(app.ReferenceButtonGroup);
 app.BaselineCheckBox.Enable = 'off';
 app.BaselineCheckBox.Text = 'Baseline';
 app.BaselineCheckBox.FontName = 'Calibri Light';
 app.BaselineCheckBox.FontSize = 15;
 app.BaselineCheckBox.FontColor = [0.149 0.149 0.149];
 app.BaselineCheckBox.Position = [17 38 72 22];
 app.BaselineCheckBox.Value = true;
 % Create ResultsTab
 app.ResultsTab = uitab(app.TabGroup);
 app.ResultsTab.Title = ' Results ';
 % Create AverageAttentionLevel
 app.AverageAttentionLevel = uilabel(app.ResultsTab);
 app.AverageAttentionLevel.HorizontalAlignment = 'center';
 app.AverageAttentionLevel.FontName = 'Cambria Math';
 app.AverageAttentionLevel.FontSize = 20;
 app.AverageAttentionLevel.FontWeight = 'bold';
 app.AverageAttentionLevel.Position = [204 225 92 47];
 app.AverageAttentionLevel.Text = ' ';
 % Create AALLabel
 app.AALLabel = uilabel(app.ResultsTab);
 app.AALLabel.HorizontalAlignment = 'center';
 app.AALLabel.FontName = 'Calibri';
 app.AALLabel.FontSize = 15;
 app.AALLabel.Position = [33.5 237 154 22];
 app.AALLabel.Text = 'Average Attention Level:';
 % Create ButtonImage_2
 app.ButtonImage_2 = uibutton(app.GUIUIFigure, 'push');
 app.ButtonImage_2.Icon = 'Logo.png';
 app.ButtonImage_2.BackgroundColor = [1 1 1];
 app.ButtonImage_2.Position = [46 401 641 101];
 app.ButtonImage_2.Text = '';
 % Create Panel
 app.Panel = uipanel(app.GUIUIFigure);
 app.Panel.AutoResizeChildren = 'off';
 app.Panel.ForegroundColor = [0.149 0.149 0.149];
 app.Panel.BorderType = 'none';
 app.Panel.BackgroundColor = [1 1 1];
 app.Panel.Position = [327 21 240 49];
 % Create StartButton
 app.StartButton = uibutton(app.Panel, 'push');
 app.StartButton.ButtonPushedFcn = createCallbackFcn(app, @StartPush, true);
 app.StartButton.BackgroundColor = [0.4706 0.6706 0.1882];
 app.StartButton.FontColor = [1 1 1];
 app.StartButton.Position = [1 5 79 40];
 app.StartButton.Text = 'Start';
 % Create ButtonImage
 app.ButtonImage = uibutton(app.GUIUIFigure, 'push');
 app.ButtonImage.Icon = 'Logo.png';
 app.ButtonImage.BackgroundColor = [0 0 0];
 app.ButtonImage.Position = [46 70 641 324];
 app.ButtonImage.Text = '';
 end
 end
 methods (Access = public)
 % Construct app
 function app = ProjectApp
 % Create and configure components
 createComponents(app)
 % Register the app with App Designer
 registerApp(app, app.GUIUIFigure)
 % Execute the startup function
 runStartupFcn(app, @startupFcn)
 if nargout == 0
 clear app
 end
  end
 % Code that executes before app deletion
 function delete(app)
 % Delete UIFigure when app is deleted
 delete(app.GUIUIFigure)
 end
 end
end
