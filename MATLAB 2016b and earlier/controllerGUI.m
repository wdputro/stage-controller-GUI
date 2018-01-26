function varargout = RasterScanning_GUI(varargin)
% RASTERSCANNING_GUI MATLAB code for RasterScanning_GUI.fig
%      RASTERSCANNING_GUI, by itself, creates a new RASTERSCANNING_GUI or raises the existing
%      singleton*.
%
%      H = RASTERSCANNING_GUI returns the handle to a new RASTERSCANNING_GUI or the handle to
%      the existing singleton*.
%
%      RASTERSCANNING_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RASTERSCANNING_GUI.M with the given input arguments.
%
%      RASTERSCANNING_GUI('Property','Value',...) creates a new RASTERSCANNING_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RasterScanning_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RasterScanning_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RasterScanning_GUI

% Last Modified by GUIDE v2.5 06-Oct-2015 13:33:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RasterScanning_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @RasterScanning_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before RasterScanning_GUI is made visible.
function RasterScanning_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RasterScanning_GUI (see VARARGIN)

% Choose default command line output for RasterScanning_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RasterScanning_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RasterScanning_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function startPointX_Callback(hObject, eventdata, handles)
% hObject    handle to startPointX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startPointX as text
%        str2double(get(hObject,'String')) returns contents of startPointX as a double


% --- Executes during object creation, after setting all properties.
function startPointX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startPointX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NpointsX_Callback(hObject, eventdata, handles)
% hObject    handle to NpointsX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NpointsX as text
%        str2double(get(hObject,'String')) returns contents of NpointsX as a double


% --- Executes during object creation, after setting all properties.
function NpointsX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NpointsX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stepX_Callback(hObject, eventdata, handles)
% hObject    handle to stepX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stepX as text
%        str2double(get(hObject,'String')) returns contents of stepX as a double



% --- Executes during object creation, after setting all properties.
function stepX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stepX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function stepY_Callback(hObject, eventdata, handles)
% hObject    handle to stepY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stepY as text
%        str2double(get(hObject,'String')) returns contents of stepY as a double


% --- Executes during object creation, after setting all properties.
function stepY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stepY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NpointsY_Callback(hObject, eventdata, handles)
% hObject    handle to NpointsY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NpointsY as text
%        str2double(get(hObject,'String')) returns contents of NpointsY as a double


% --- Executes during object creation, after setting all properties.
function NpointsY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NpointsY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function startPointY_Callback(hObject, eventdata, handles)
% hObject    handle to startPointY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startPointY as text
%        str2double(get(hObject,'String')) returns contents of startPointY as a double


% --- Executes during object creation, after setting all properties.
function startPointY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startPointY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in stageAFG.
function stageAFG_Callback(hObject, eventdata, handles)
% hObject    handle to stageAFG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (strfind(evalc('ver'), 'Windows'))
    if (~exist('C:\Users\Public\PI\PI_MATLAB_Driver_GCS2','dir'))
        error('The PI MATLAB Driver GCS2 was not found on your system. Probably it is not installed. Please run PI_MATLAB_Driver_GCS2_Setup.exe to install the driver.');
    else
        addpath('C:\Users\Public\PI\PI_MATLAB_Driver_GCS2');
    end
end

addpath(genpath('C:\Users\MC\Documents\MATLAB\PI Stage Raster Scanning\GUIscript'));

stageConnectG( handles );


% --- Executes on button press in disconnectAll.
function disconnectAll_Callback(hObject, eventdata, handles)
% hObject    handle to disconnectAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% DisconnectG( handles );
picolas_plcs_stop(s);

C663_X.CloseConnection; 
C663_Y.CloseConnection; 

Controller.Destroy;
clear Controller;
clear C663_X;
clear C663_Y
clear afg;
% clear all;


% --- Executes on button press in xyGo.
function xyGo_Callback(hObject, eventdata, handles)
% hObject    handle to xyGo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

rasterAct( handles );


% --- Executes on button press in xMVR.
function xMVR_Callback(hObject, eventdata, handles)
% hObject    handle to xMVR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
targetX = str2double(get(handles.edit10,'String'));
C663_X = evalin('base', 'C663_X');
axisname_X = evalin('base', 'axisname_X');

C663_X.MVR(axisname_X, targetX);

   actPOS( handles );

% --- Executes on button press in yMVR.
function yMVR_Callback(hObject, eventdata, handles)
% hObject    handle to yMVR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
targetY = str2double(get(handles.edit12,'String'));
C663_Y = evalin('base', 'C663_Y');
axisname_Y = evalin('base', 'axisname_Y');

C663_Y.MVR(axisname_Y, targetY);

   actPOS( handles );

% --- Executes on button press in xMOV.
function xMOV_Callback(hObject, eventdata, handles)
% hObject    handle to xMOV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
targetX = str2double(get(handles.edit11,'String'));
C663_X = evalin('base', 'C663_X');
axisname_X = evalin('base', 'axisname_X');

C663_X.MOV(axisname_X, targetX);

   actPOS( handles );

% --- Executes on button press in yMOV.
function yMOV_Callback(hObject, eventdata, handles)
% hObject    handle to yMOV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
targetY = str2double(get(handles.edit13,'String'));
   actPOS( handles );
C663_Y = evalin('base', 'C663_Y');
axisname_Y = evalin('base', 'axisname_Y');

C663_Y.MOV(axisname_Y, targetY);




function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
