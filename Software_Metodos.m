function varargout = Software_Metodos(varargin)
% SOFTWARE_METODOS MATLAB code for Software_Metodos.fig
%      SOFTWARE_METODOS, by itself, creates a new SOFTWARE_METODOS or raises the existing
%      singleton*.
%
%      H = SOFTWARE_METODOS returns the handle to a new SOFTWARE_METODOS or the handle to
%      the existing singleton*.
%
%      SOFTWARE_METODOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOFTWARE_METODOS.M with the given input arguments.
%
%      SOFTWARE_METODOS('Property','Value',...) creates a new SOFTWARE_METODOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Software_Metodos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Software_Metodos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Software_Metodos

% Last Modified by GUIDE v2.5 13-Nov-2017 21:52:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Software_Metodos_OpeningFcn, ...
                   'gui_OutputFcn',  @Software_Metodos_OutputFcn, ...
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


% --- Executes just before Software_Metodos is made visible.
function Software_Metodos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Software_Metodos (see VARARGIN)

% Choose default command line output for Software_Metodos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.biseccion,'visible','off')
set(handles.punto_fijo,'visible','off')
set(handles.nr,'visible','off')
set(handles.gauss_jordan,'visible','off')
set(handles.jacobi,'visible','off')
set(handles.gauss_seidel,'visible','off')
set(handles.crout,'visible','off')
set(handles.ncotes,'visible','off')
set(handles.s13,'visible','off')
set(handles.s38,'visible','off')
set(handles.euler,'visible','off')
set(handles.rk,'visible','off')
set(handles.entrada,'visible','off')
set(handles.entrada2,'visible','off')
set(handles.texto1,'visible','off')
set(handles.texto2,'visible','off')


% UIWAIT makes Software_Metodos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Software_Metodos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Menu.
function Menu_Callback(hObject, eventdata, handles)
v = get(handles.Menu,'Value');
switch v
    case 1
        set(handles.biseccion,'visible','off')
        set(handles.punto_fijo,'visible','off')
        set(handles.nr,'visible','off')
        set(handles.gauss_jordan,'visible','off')
        set(handles.jacobi,'visible','off')
        set(handles.gauss_seidel,'visible','off')
        set(handles.crout,'visible','off')
        set(handles.ncotes,'visible','off')
        set(handles.s13,'visible','off')
        set(handles.s38,'visible','off')
        set(handles.euler,'visible','off')
        set(handles.rk,'visible','off')
        set(handles.entrada,'visible','off')
        set(handles.entrada2,'visible','off')
        set(handles.texto,'String','1');
        set(handles.texto1,'visible','off')
        set(handles.texto2,'visible','off')

    case 2
        set(handles.biseccion,'visible','on')
        set(handles.punto_fijo,'visible','on')
        set(handles.nr,'visible','on')
        set(handles.gauss_jordan,'visible','off')
        set(handles.jacobi,'visible','off')
        set(handles.gauss_seidel,'visible','off')
        set(handles.crout,'visible','off')
        set(handles.ncotes,'visible','off')
        set(handles.s13,'visible','off')
        set(handles.s38,'visible','off')
        set(handles.euler,'visible','off')
        set(handles.rk,'visible','off')
        set(handles.entrada,'visible','on')
        set(handles.entrada2,'visible','on')
        set(handles.texto,'String','2');
        set(handles.texto1,'visible','on')
        set(handles.texto2,'visible','on')
    case 3
        set(handles.biseccion,'visible','off')
        set(handles.punto_fijo,'visible','off')
        set(handles.nr,'visible','off')
        set(handles.gauss_jordan,'visible','on')
        set(handles.jacobi,'visible','on')
        set(handles.gauss_seidel,'visible','on')
        set(handles.crout,'visible','on')
        set(handles.ncotes,'visible','off')
        set(handles.s13,'visible','off')
        set(handles.s38,'visible','off')
        set(handles.euler,'visible','off')
        set(handles.rk,'visible','off')
        set(handles.entrada,'visible','on')
        set(handles.entrada2,'visible','off')
        set(handles.texto,'String','3');
        set(handles.texto1,'visible','on')
        set(handles.texto2,'visible','off')
    case 4
        set(handles.biseccion,'visible','off')
        set(handles.punto_fijo,'visible','off')
        set(handles.nr,'visible','off')
        set(handles.gauss_jordan,'visible','off')
        set(handles.jacobi,'visible','off')
        set(handles.gauss_seidel,'visible','off')
        set(handles.crout,'visible','off')
        set(handles.ncotes,'visible','on')
        set(handles.s13,'visible','on')
        set(handles.s38,'visible','on')
        set(handles.euler,'visible','off')
        set(handles.rk,'visible','off')
        set(handles.entrada,'visible','on')
        set(handles.entrada2,'visible','off')
        set(handles.texto,'String','4');
        set(handles.texto1,'visible','on')
        set(handles.texto2,'visible','off')
    case 5
        set(handles.biseccion,'visible','off')
        set(handles.punto_fijo,'visible','off')
        set(handles.nr,'visible','off')
        set(handles.gauss_jordan,'visible','off')
        set(handles.jacobi,'visible','off')
        set(handles.gauss_seidel,'visible','off')
        set(handles.crout,'visible','off')
        set(handles.ncotes,'visible','off')
        set(handles.s13,'visible','off')
        set(handles.s38,'visible','off')
        set(handles.euler,'visible','on')
        set(handles.rk,'visible','on')
        set(handles.entrada,'visible','on')
        set(handles.entrada2,'visible','off')
        set(handles.texto,'String','5');
        set(handles.texto1,'visible','on')
        set(handles.texto2,'visible','off')
end
% hObject    handle to Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Menu


% --- Executes on button press in biseccion.
function biseccion_Callback(hObject, eventdata, handles)
clc
functionf=inline(get(handles.entrada,'String'));
par=str2num(get(handles.entrada2,'String'));
x0=par(1);
x1=par(2);
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
% hObject    handle to biseccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in punto_fijo.
function punto_fijo_Callback(hObject, eventdata, handles)
matrix=get(handles.entrada,'String')
% hObject    handle to punto_fijo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in nr.
function nr_Callback(hObject, eventdata, handles)
% hObject    handle to nr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in gauss_jordan.
function gauss_jordan_Callback(hObject, eventdata, handles)
% hObject    handle to gauss_jordan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in jacobi.
function jacobi_Callback(hObject, eventdata, handles)
% hObject    handle to jacobi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in gauss_seidel.
function gauss_seidel_Callback(hObject, eventdata, handles)
% hObject    handle to gauss_seidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in crout.
function crout_Callback(hObject, eventdata, handles)
% hObject    handle to crout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in ncotes.


function ncotes_Callback(hObject, eventdata, handles)
% hObject    handle to ncotes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in s13.
function s13_Callback(hObject, eventdata, handles)
% hObject    handle to s13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in s38.
function s38_Callback(hObject, eventdata, handles)
% hObject    handle to s38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in euler.
function euler_Callback(hObject, eventdata, handles)
% hObject    handle to euler (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rk.
function rk_Callback(hObject, eventdata, handles)
% hObject    handle to rk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function entrada_CreateFcn(hObject, eventdata, handles)
% hObject    handle to entrada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function Menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function entrada_Callback(hObject, eventdata, handles)



function entrada2_Callback(hObject, eventdata, handles)
% hObject    handle to entrada2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of entrada2 as text
%        str2double(get(hObject,'String')) returns contents of entrada2 as a double


% --- Executes during object creation, after setting all properties.
function entrada2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to entrada2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
