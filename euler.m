function varargout = euler(varargin)
% EULER MATLAB code for euler.fig
%      EULER, by itself, creates a new EULER or raises the existing
%      singleton*.
%
%      H = EULER returns the handle to a new EULER or the handle to
%      the existing singleton*.
%
%      EULER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EULER.M with the given input arguments.
%
%      EULER('Property','Value',...) creates a new EULER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before euler_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to euler_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help euler

% Last Modified by GUIDE v2.5 26-Nov-2017 21:43:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @euler_OpeningFcn, ...
                   'gui_OutputFcn',  @euler_OutputFcn, ...
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


% --- Executes just before euler is made visible.
function euler_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to euler (see VARARGIN)

% Choose default command line output for euler
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes euler wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = euler_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
