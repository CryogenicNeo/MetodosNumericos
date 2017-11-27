function varargout = s38(varargin)
% S38 MATLAB code for s38.fig
%      S38, by itself, creates a new S38 or raises the existing
%      singleton*.
%
%      H = S38 returns the handle to a new S38 or the handle to
%      the existing singleton*.
%
%      S38('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in S38.M with the given input arguments.
%
%      S38('Property','Value',...) creates a new S38 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before s38_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to s38_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help s38

% Last Modified by GUIDE v2.5 26-Nov-2017 21:42:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @s38_OpeningFcn, ...
                   'gui_OutputFcn',  @s38_OutputFcn, ...
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


% --- Executes just before s38 is made visible.
function s38_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to s38 (see VARARGIN)

% Choose default command line output for s38
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes s38 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = s38_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
