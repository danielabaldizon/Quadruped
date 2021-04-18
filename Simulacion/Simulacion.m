function varargout = Simulacion(varargin)
% SIMULACION MATLAB code for Simulacion.fig
%      SIMULACION, by itself, creates a new SIMULACION or raises the existing
%      singleton*.
%
%      H = SIMULACION returns the handle to a new SIMULACION or the handle to
%      the existing singleton*.
%
%      SIMULACION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMULACION.M with the given input arguments.
%
%      SIMULACION('Property','Value',...) creates a new SIMULACION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Simulacion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Simulacion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Simulacion

% Last Modified by GUIDE v2.5 16-Apr-2021 21:43:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Simulacion_OpeningFcn, ...
                   'gui_OutputFcn',  @Simulacion_OutputFcn, ...
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


% --- Executes just before Simulacion is made visible.
function Simulacion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Simulacion (see VARARGIN)

% Choose default command line output for Simulacion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p1 = 0;
vq2p1 = 0;
vq3p1 = 0;
vq1p2 = 0;
vq2p2 = 0;
vq3p2 = 0;
vq1p3 = 0; 
vq2p3 = 0;
vq3p3 = 0;
vq1p4 = 0; 
vq2p4 = 0;
vq3p4 = 0;
set(handles.t1p1,'String',vq1p1);
set(handles.t2p1,'String',vq2p1);
set(handles.t3p1,'String',vq3p1);
set(handles.t1p2,'String',vq1p2);
set(handles.t2p2,'String',vq2p2);
set(handles.t3p2,'String',vq3p2);
set(handles.t1p3,'String',vq1p3);
set(handles.t2p3,'String',vq2p3);
set(handles.t3p3,'String',vq3p3);
set(handles.t1p4,'String',vq1p4);
set(handles.t2p4,'String',vq2p4);
set(handles.t3p4,'String',vq3p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)
% UIWAIT makes Simulacion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Simulacion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function s1p1_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p1 = get(hObject,'Value');
set(handles.t1p1,'String',vq1p1);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)

% hObject    handle to s1p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s1p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s1p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function s3p1_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p1 = get(hObject,'Value');
set(handles.t3p1,'String',vq3p1);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)

% hObject    handle to s3p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s3p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s3p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s2p1_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p1 = get(hObject,'Value');
set(handles.t2p1,'String',vq2p1);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s2p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s2p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s1p2_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p2 = get(hObject,'Value');
set(handles.t1p2,'String',vq1p2);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s1p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s1p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s3p2_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p2 = get(hObject,'Value');
set(handles.t3p2,'String',vq3p2);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s3p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s3p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s2p2_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p2 = get(hObject,'Value');
set(handles.t2p2,'String',vq2p2);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s2p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s2p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s1p3_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p3 = get(hObject,'Value');
set(handles.t1p3,'String',vq1p3);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s1p3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s1p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s3p3_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p3 = get(hObject,'Value');
set(handles.t3p3,'String',vq3p3);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s3p3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s3p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s2p3_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p3 = get(hObject,'Value');
set(handles.t2p3,'String',vq2p3);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s2p3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s2p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s1p4_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p4 = get(hObject,'Value');
set(handles.t1p4,'String',vq1p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s1p4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s1p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s3p4_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p4 = get(hObject,'Value');
set(handles.t3p4,'String',vq3p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s3p4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s3p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s2p4_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p4 = get(hObject,'Value');
set(handles.t2p4,'String',vq2p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function s2p4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s2p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function t1p1_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p1 = get(hObject,'String');
vq1p1 = str2double(vq1p1);
set(handles.s1p1,'Value',vq1p1);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t1p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t3p1_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p1 = get(hObject,'String');
vq3p1 = str2double(vq3p1);
set(handles.s3p1,'Value',vq3p1);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)

% --- Executes during object creation, after setting all properties.
function t3p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function t2p1_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p1 = get(hObject,'String');
vq2p1 = str2double(vq2p1);
set(handles.s2p1,'Value',vq2p1);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t2p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t1p2_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p2 = get(hObject,'String');
vq1p2 = str2double(vq1p2);
set(handles.s1p2,'Value',vq1p2);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t1p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t3p2_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p2 = get(hObject,'String');
vq3p2 = str2double(vq3p2);
set(handles.s3p2,'Value',vq3p2);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t3p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2p2_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p2 = get(hObject,'String');
vq2p2 = str2double(vq2p2);
set(handles.s2p2,'Value',vq2p2);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t2p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t1p3_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p3 = get(hObject,'String');
vq1p3 = str2double(vq1p3);
set(handles.s1p3,'Value',vq1p3);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t1p3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t3p3_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p3 = get(hObject,'String');
vq3p3 = str2double(vq3p3);
set(handles.s3p3,'Value',vq3p3);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t3p3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2p3_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p3 = get(hObject,'String');
vq2p3 = str2double(vq2p3);
set(handles.s2p3,'Value',vq2p3);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t2p3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t1p4_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p4 = get(hObject,'String');
vq1p4 = str2double(vq1p4);
set(handles.s1p4,'Value',vq1p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t1p4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t3p4_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq3p4 = get(hObject,'String');
vq3p4 = str2double(vq3p4);
set(handles.s3p4,'Value',vq3p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t3p4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2p4_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq2p4 = get(hObject,'String');
vq2p4 = str2double(vq2p4);
set(handles.s2p4,'Value',vq2p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)


% --- Executes during object creation, after setting all properties.
function t2p4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global vq1p1 vq2p1 vq3p1 vq1p2 vq2p2 vq3p2 vq1p3 vq2p3 vq3p3 vq1p4 vq2p4 vq3p4;
vq1p1 = 0;
vq2p1 = 0;
vq3p1 = 0;
vq1p2 = 0;
vq2p2 = 0;
vq3p2 = 0;
vq1p3 = 0; 
vq2p3 = 0;
vq3p3 = 0;
vq1p4 = 0; 
vq2p4 = 0;
vq3p4 = 0;
set(handles.s1p1,'Value',vq1p1);
set(handles.s2p1,'Value',vq2p1);
set(handles.s3p1,'Value',vq3p1);
set(handles.s1p2,'Value',vq1p2);
set(handles.s2p2,'Value',vq2p2);
set(handles.s3p2,'Value',vq3p2);
set(handles.s1p3,'Value',vq1p3);
set(handles.s2p3,'Value',vq2p3);
set(handles.s3p3,'Value',vq3p3);
set(handles.s1p4,'Value',vq1p4);
set(handles.s2p4,'Value',vq2p4);
set(handles.s3p4,'Value',vq3p4);
set(handles.t1p1,'String',vq1p1);
set(handles.t2p1,'String',vq2p1);
set(handles.t3p1,'String',vq3p1);
set(handles.t1p2,'String',vq1p2);
set(handles.t2p2,'String',vq2p2);
set(handles.t3p2,'String',vq3p2);
set(handles.t1p3,'String',vq1p3);
set(handles.t2p3,'String',vq2p3);
set(handles.t3p3,'String',vq3p3);
set(handles.t1p4,'String',vq1p4);
set(handles.t2p4,'String',vq2p4);
set(handles.t3p4,'String',vq3p4);
Marvinsim(vq1p1,vq2p1,vq3p1,vq1p2,vq2p2,vq3p2,vq1p3,vq2p3,vq3p3,vq1p4,vq2p4,vq3p4)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
