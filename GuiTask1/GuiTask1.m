function varargout = GuiTask1(varargin)
% GUITASK1 MATLAB code for GuiTask1.fig
%      GUITASK1, by itself, creates a new GUITASK1 or raises the existing
%      singleton*.
%
%      H = GUITASK1 returns the handle to a new GUITASK1 or the handle to
%      the existing singleton*.
%
%      GUITASK1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITASK1.M with the given input arguments.
%
%      GUITASK1('Property','Value',...) creates a new GUITASK1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiTask1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiTask1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiTask1

% Last Modified by GUIDE v2.5 21-May-2021 13:05:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiTask1_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiTask1_OutputFcn, ...
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


% --- Executes just before GuiTask1 is made visible.
function GuiTask1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiTask1 (see VARARGIN)

% Choose default command line output for GuiTask1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiTask1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiTask1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_surname_Callback(hObject, eventdata, handles)
% hObject    handle to edit_surname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_surname as text
%        str2double(get(hObject,'String')) returns contents of edit_surname as a double


% --- Executes during object creation, after setting all properties.
function edit_surname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_surname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_name_Callback(hObject, eventdata, handles)
% hObject    handle to edit_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_name as text
%        str2double(get(hObject,'String')) returns contents of edit_name as a double


% --- Executes during object creation, after setting all properties.
function edit_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_midname_Callback(hObject, eventdata, handles)
% hObject    handle to edit_midname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_midname as text
%        str2double(get(hObject,'String')) returns contents of edit_midname as a double


% --- Executes during object creation, after setting all properties.
function edit_midname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_midname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_sub_1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_sub_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_sub_1 as text
%        str2double(get(hObject,'String')) returns contents of edit_sub_1 as a double


% --- Executes during object creation, after setting all properties.
function edit_sub_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_sub_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_sub_2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_sub_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_sub_2 as text
%        str2double(get(hObject,'String')) returns contents of edit_sub_2 as a double


% --- Executes during object creation, after setting all properties.
function edit_sub_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_sub_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_sub_3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_sub_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_sub_3 as text
%        str2double(get(hObject,'String')) returns contents of edit_sub_3 as a double


% --- Executes during object creation, after setting all properties.
function edit_sub_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_sub_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_score_1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_score_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_score_1 as text
%        str2double(get(hObject,'String')) returns contents of edit_score_1 as a double


% --- Executes during object creation, after setting all properties.
function edit_score_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_score_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_score_2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_score_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_score_2 as text
%        str2double(get(hObject,'String')) returns contents of edit_score_2 as a double


% --- Executes during object creation, after setting all properties.
function edit_score_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_score_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_score_3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_score_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_score_3 as text
%        str2double(get(hObject,'String')) returns contents of edit_score_3 as a double


% --- Executes during object creation, after setting all properties.
function edit_score_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_score_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sum=str2double(get(handles.edit_score_1,'string'))+str2double(get(handles.edit_score_2,'string'))+str2double(get(handles.edit_score_3,'string'));
set(handles.text9,'string',sum);
if sum>=str2double(get(handles.edit11,'string'))
    set(handles.text7,'string','Поздравляем!!!');
else
    set(handles.text7,'string','Соболезнуем...');
end

function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
