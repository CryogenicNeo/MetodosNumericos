function varargout = biseccion(varargin)
% BISECCION MATLAB code for biseccion.fig
%      BISECCION, by itself, creates a new BISECCION or raises the existing
%      singleton*.
%
%      H = BISECCION returns the handle to a new BISECCION or the handle to
%      the existing singleton*.
%
%      BISECCION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BISECCION.M with the given input arguments.
%
%      BISECCION('Property','Value',...) creates a new BISECCION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before biseccion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to biseccion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help biseccion

% Last Modified by GUIDE v2.5 26-Nov-2017 23:21:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @biseccion_OpeningFcn, ...
                   'gui_OutputFcn',  @biseccion_OutputFcn, ...
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


% --- Executes just before biseccion is made visible.
function biseccion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to biseccion (see VARARGIN)

% Choose default command line output for biseccion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes biseccion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = biseccion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function bisc_fx_Callback(hObject, eventdata, handles)
% hObject    handle to bisc_fx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bisc_fx as text
%        str2double(get(hObject,'String')) returns contents of bisc_fx as a double


% --- Executes during object creation, after setting all properties.
function bisc_fx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bisc_fx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bisc_x0_Callback(hObject, eventdata, handles)
% hObject    handle to bisc_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bisc_x0 as text
%        str2double(get(hObject,'String')) returns contents of bisc_x0 as a double


% --- Executes during object creation, after setting all properties.
function bisc_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bisc_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bisc_x1_Callback(hObject, eventdata, handles)
% hObject    handle to bisc_x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bisc_x1 as text
%        str2double(get(hObject,'String')) returns contents of bisc_x1 as a double


% --- Executes during object creation, after setting all properties.
function bisc_x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bisc_x1 (see GCBO)
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
functionf=inline(get(handles.bisc_fx,'String'));
x0=str2num(get(handles.bisc_x0,'String'));
x1=str2num(get(handles.bisc_x1,'String'));
tol=0.0001;
if feval(functionf,x0)*feval(functionf,x1)<0
    x=x0;
    while abs(feval(functionf,x))> tol
        x=(x0+x1)/2;    
        if feval(functionf,x0)*feval(functionf,x)<0
            x1=x;
        else
            x0=x;
        end
    end
    set(handles.texto,'String',['La raiz es: ' num2str(x)]);
else
    set(handles.texto,'String','No se encontró raiz');
end
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
