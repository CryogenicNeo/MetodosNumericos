function varargout = punto_fijo(varargin)
% PUNTO_FIJO MATLAB code for punto_fijo.fig
%      PUNTO_FIJO, by itself, creates a new PUNTO_FIJO or raises the existing
%      singleton*.
%
%      H = PUNTO_FIJO returns the handle to a new PUNTO_FIJO or the handle to
%      the existing singleton*.
%
%      PUNTO_FIJO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUNTO_FIJO.M with the given input arguments.
%
%      PUNTO_FIJO('Property','Value',...) creates a new PUNTO_FIJO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before punto_fijo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to punto_fijo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help punto_fijo

% Last Modified by GUIDE v2.5 27-Nov-2017 00:14:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @punto_fijo_OpeningFcn, ...
                   'gui_OutputFcn',  @punto_fijo_OutputFcn, ...
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


% --- Executes just before punto_fijo is made visible.
function punto_fijo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to punto_fijo (see VARARGIN)

% Choose default command line output for punto_fijo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes punto_fijo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = punto_fijo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pf_fx_Callback(hObject, eventdata, handles)
% hObject    handle to pf_fx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pf_fx as text
%        str2double(get(hObject,'String')) returns contents of pf_fx as a double


% --- Executes during object creation, after setting all properties.
function pf_fx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pf_fx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pf_gx_Callback(hObject, eventdata, handles)
% hObject    handle to pf_gx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pf_gx as text
%        str2double(get(hObject,'String')) returns contents of pf_gx as a double


% --- Executes during object creation, after setting all properties.
function pf_gx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pf_gx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pf_sm_Callback(hObject, eventdata, handles)
% hObject    handle to pf_sm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pf_sm as text
%        str2double(get(hObject,'String')) returns contents of pf_sm as a double


% --- Executes during object creation, after setting all properties.
function pf_sm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pf_sm (see GCBO)
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
t=0.0001;
fx=inline(get(handles.pf_fx,'String'));
gx=inline(get(handles.pf_gx,'String'));
x=str2num(get(handles.pf_sm,'String'));
while (abs(feval(fx,x))>t)
x=feval(gx,x);
end
set(handles.texto,'String',['La raiz es: ' num2str(x)]);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
