function varargout = runge_kutta(varargin)
% RUNGE_KUTTA MATLAB code for runge_kutta.fig
%      RUNGE_KUTTA, by itself, creates a new RUNGE_KUTTA or raises the existing
%      singleton*.
%
%      H = RUNGE_KUTTA returns the handle to a new RUNGE_KUTTA or the handle to
%      the existing singleton*.
%
%      RUNGE_KUTTA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RUNGE_KUTTA.M with the given input arguments.
%
%      RUNGE_KUTTA('Property','Value',...) creates a new RUNGE_KUTTA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before runge_kutta_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to runge_kutta_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help runge_kutta

% Last Modified by GUIDE v2.5 26-Nov-2017 21:45:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @runge_kutta_OpeningFcn, ...
                   'gui_OutputFcn',  @runge_kutta_OutputFcn, ...
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


% --- Executes just before runge_kutta is made visible.
function runge_kutta_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to runge_kutta (see VARARGIN)

% Choose default command line output for runge_kutta
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes runge_kutta wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = runge_kutta_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
