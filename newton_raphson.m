function varargout = newton_raphson(varargin)
% NEWTON_RAPHSON MATLAB code for newton_raphson.fig
%      NEWTON_RAPHSON, by itself, creates a new NEWTON_RAPHSON or raises the existing
%      singleton*.
%
%      H = NEWTON_RAPHSON returns the handle to a new NEWTON_RAPHSON or the handle to
%      the existing singleton*.
%
%      NEWTON_RAPHSON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTON_RAPHSON.M with the given input arguments.
%
%      NEWTON_RAPHSON('Property','Value',...) creates a new NEWTON_RAPHSON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newton_raphson_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newton_raphson_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newton_raphson

% Last Modified by GUIDE v2.5 27-Nov-2017 00:48:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newton_raphson_OpeningFcn, ...
                   'gui_OutputFcn',  @newton_raphson_OutputFcn, ...
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


% --- Executes just before newton_raphson is made visible.
function newton_raphson_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newton_raphson (see VARARGIN)

% Choose default command line output for newton_raphson
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newton_raphson wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newton_raphson_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function nr_fx_Callback(hObject, eventdata, handles)
% hObject    handle to nr_fx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nr_fx as text
%        str2double(get(hObject,'String')) returns contents of nr_fx as a double


% --- Executes during object creation, after setting all properties.
function nr_fx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nr_fx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nr_sm_Callback(hObject, eventdata, handles)
% hObject    handle to nr_sm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nr_sm as text
%        str2double(get(hObject,'String')) returns contents of nr_sm as a double


% --- Executes during object creation, after setting all properties.
function nr_sm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nr_sm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nr_dx_Callback(hObject, eventdata, handles)
% hObject    handle to nr_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nr_dx as text
%        str2double(get(hObject,'String')) returns contents of nr_dx as a double


% --- Executes during object creation, after setting all properties.
function nr_dx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nr_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
clc
fx=inline(get(handles.nr_fx,'String'));
dx=inline(get(handles.nr_dx,'String'));
t=0.0001;
a=str2num(get(handles.nr_sm,'String'));
while abs(feval(fx,a))>t
a=a-(feval(fx,a)/(feval(dx,a)));
end
set(handles.texto,'String',['La raiz es: ' num2str(a)]);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
