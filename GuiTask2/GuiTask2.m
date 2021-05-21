function varargout = GuiTask2(varargin)
% GUITASK2 MATLAB code for GuiTask2.fig
%      GUITASK2, by itself, creates a new GUITASK2 or raises the existing
%      singleton*.
%
%      H = GUITASK2 returns the handle to a new GUITASK2 or the handle to
%      the existing singleton*.
%
%      GUITASK2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITASK2.M with the given input arguments.
%
%      GUITASK2('Property','Value',...) creates a new GUITASK2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiTask2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiTask2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiTask2

% Last Modified by GUIDE v2.5 21-May-2021 14:22:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiTask2_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiTask2_OutputFcn, ...
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


% --- Executes just before GuiTask2 is made visible.
function GuiTask2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiTask2 (see VARARGIN)

% Choose default command line output for GuiTask2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiTask2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiTask2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=linspace(0,pi*4,100);
if get(handles.checkbox4,'Value')==1.0
    if get(handles.checkbox5,'Value')
        plot(0,0);
        hold on;
        y=sin(x);
        plot(x,y);
        y=cos(x);
        plot(x,y);
        hold off;
    else
        y=sin(x);
        plot(x,y);
    end
elseif get(handles.checkbox5,'Value')
    y=cos(x);
    plot(x,y);
else
    plot(0,0)
end

% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5
