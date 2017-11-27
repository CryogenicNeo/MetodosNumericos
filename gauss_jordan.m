function varargout = gauss_jordan(varargin)
% GAUSS_JORDAN MATLAB code for gauss_jordan.fig
%      GAUSS_JORDAN, by itself, creates a new GAUSS_JORDAN or raises the existing
%      singleton*.
%
%      H = GAUSS_JORDAN returns the handle to a new GAUSS_JORDAN or the handle to
%      the existing singleton*.
%
%      GAUSS_JORDAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAUSS_JORDAN.M with the given input arguments.
%
%      GAUSS_JORDAN('Property','Value',...) creates a new GAUSS_JORDAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gauss_jordan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gauss_jordan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gauss_jordan

% Last Modified by GUIDE v2.5 26-Nov-2017 21:18:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gauss_jordan_OpeningFcn, ...
                   'gui_OutputFcn',  @gauss_jordan_OutputFcn, ...
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


% --- Executes just before gauss_jordan is made visible.
function gauss_jordan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gauss_jordan (see VARARGIN)

% Choose default command line output for gauss_jordan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gauss_jordan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gauss_jordan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
