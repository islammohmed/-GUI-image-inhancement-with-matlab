function varargout = pro_project(varargin)
% PRO_PROJECT MATLAB code for pro_project.fig
%      PRO_PROJECT, by itself, creates a new PRO_PROJECT or raises the existing
%      singleton*.
%
%      H = PRO_PROJECT returns the handle to a new PRO_PROJECT or the handle to
%      the existing singleton*.
%
%      PRO_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRO_PROJECT.M with the given input arguments.
%
%      PRO_PROJECT('Property','Value',...) creates a new PRO_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pro_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pro_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  pop1 "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pro_project

% Last Modified by GUIDE v2.5 19-Dec-2022 13:20:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pro_project_OpeningFcn, ...
                   'gui_OutputFcn',  @pro_project_OutputFcn, ...
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



% --- Executes just before pro_project is made visible.
function pro_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pro_project (see VARARGIN)

% pop1 default command line output for pro_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes pro_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pro_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--TABS & PANELS START
% --- Executes on button press in tab1.
function tab1_Callback(hObject, eventdata, handles)
%when click on tab1 the panel1 appear(ON) and all others not
set(handles.panel1,'visible','on')
set(handles.panel2,'visible','off')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','off')
set(handles.panel5,'visible','off')
set(handles.panel6,'visible','off')
set(handles.panel7,'visible','off')
% --- Executes on button press in tab2.
function tab2_Callback(hObject, eventdata, handles)
%when click on tab2 the panel2 appear(ON) and all others not
set(handles.panel1,'visible','off')
set(handles.panel2,'visible','on')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','off')
set(handles.panel5,'visible','off')
set(handles.panel6,'visible','off')
set(handles.panel7,'visible','off')
% --- Executes on button press in tab3.
function tab3_Callback(hObject, eventdata, handles)
%when click on tab3 the panel3 appear(ON) and all others not
set(handles.panel1,'visible','off')
set(handles.panel2,'visible','off')
set(handles.panel3,'visible','on')
set(handles.panel4,'visible','off')
set(handles.panel5,'visible','off')
set(handles.panel6,'visible','off')
set(handles.panel7,'visible','off')
% --- Executes on button press in tab4.
function tab4_Callback(hObject, eventdata, handles)
%when click on tab4 the panel4 appear(ON) and all others not
set(handles.panel1,'visible','off')
set(handles.panel2,'visible','off')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','on')
set(handles.panel5,'visible','off')
set(handles.panel6,'visible','off')
set(handles.panel7,'visible','off')
% --- Executes on button press in tab5.
function tab5_Callback(hObject, eventdata, handles)
%when click on tab5 the panel5 appear(ON) and all others not
set(handles.panel1,'visible','off')
set(handles.panel2,'visible','off')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','off')
set(handles.panel5,'visible','on')
set(handles.panel6,'visible','off')
set(handles.panel7,'visible','off')
% --- Executes on button press in tab6.
function tab6_Callback(hObject, eventdata, handles)
%when click on tab6 the panel6 appear(ON) and all others not
set(handles.panel1,'visible','off')
set(handles.panel2,'visible','off')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','off')
set(handles.panel5,'visible','off')
set(handles.panel6,'visible','on')
set(handles.panel7,'visible','off')
% --- Executes on button press in panel7.
function tab7_Callback(hObject, eventdata, handles)
%when click on tab7 the panel7 appear(ON) and all others not
set(handles.panel1,'visible','off')
set(handles.panel2,'visible','off')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','off')
set(handles.panel5,'visible','off')
set(handles.panel6,'visible','off')
set(handles.panel7,'visible','on')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--TABS & PANELS END



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--LOAD IMAGE START
% --- Executes on button press in load1.
function load1_Callback(hObject, eventdata, handles)
    global im1
%matlab function to get RGB image    
[filename, pathname] = uigetfile('*.*', 'Pick a MATLAB code file');
    if isequal(filename,0) || isequal(pathname,0)
        msgbox(sprintf('choose an image'))
        return
    else
       filename = strcat(pathname,filename);
       setappdata(0,'filename',filename);
       im1 = imread(filename);
       axes(handles.axes1);
       imshow(im1)
       setappdata(0,'im1',im1)
       setappdata(0,'filename',im1);
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--LOAD IMAGE END



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--ENHANCEMENT START
% --- Executes on selection change in pop10.
function pop10_Callback(hObject, eventdata, handles)
global im1
h = get(hObject,'value');
switch h
    case 1
        msgbox(sprintf('choose a method'))
        return
    case 2
        I= getappdata(0,'edit1');
        I= double (I);
        I_min = min (I(:));
        I_max = max(I(:));
        J= 255* (I-I_min) / (I_max - I_min);
        J=uint8(J);
        setappdata(0,'edit1',J)
        axes(handles.axes2);
        imshow(J)
    case 3
        I= getappdata(0,'edit1');
        J=histeq(I);
        setappdata(0,'edit1',J)
        axes(handles.axes2);
        imshow (J)
    case 4
        I= getappdata(0,'edit1');
        J=imadjust(I,[70/255 160/255],[80/255 1]);
        setappdata(0,'edit1',J)
        axes(handles.axes2);
        imshow (J) 
    case 5
        J = getappdata(0,'edit1');
        removed = medfilt3(J,[5,5,3]);
        setappdata(0,'edit1',removed)
        axes(handles.axes2);
        imshow(removed)
end


% --- Executes during object creation, after setting all properties.
function pop10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in noise.
function noise_Callback(hObject, eventdata, handles)
I = getappdata(0,'edit1');
J = imnoise(I,'salt & pepper',0.4);
setappdata(0,'edit1',J)
axes(handles.axes2);
imshow(J)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--ENHANCEMENT END


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--COLORS SYSTEMS START
% --- Executes on button press in pop1.
function pop1_Callback(hObject, eventdata, handles)
%convert rgb(true color) to
global im1
h = get(hObject,'value');
switch h
    case 1
        msgbox(sprintf('choose a system to convert'))
        return
    case 2
        im1 = getappdata(0,'im1');
        %level of threshold
        level = graythresh(im1);
        y = im2bw(im1,level);
        setappdata(0,'edit1',y);
        axes(handles.axes2);
        imshow(y)
    case 3
        im1 = getappdata(0,'im1');
        y = rgb2gray(im1);
        setappdata(0,'edit1',y);
        axes(handles.axes2);
        imshow(y)
    case 4
        im1 = getappdata(0,'im1');
        y = rgb2xyz(im1);
        setappdata(0,'edit1',y);
        axes(handles.axes2);
        imshow(y)
    case 5
        im1 = getappdata(0,'im1');
        y = rgb2hsv(im1);
        setappdata(0,'edit1',y);
        axes(handles.axes2);
        imshow(y)
    case 6
        im1 = getappdata(0,'im1');
        y = rgb2lightness(im1);
        setappdata(0,'edit1',y);
        axes(handles.axes2);
        imshow(y,[10 60])
    case 7 
        im1 = getappdata(0,'im1');
        [y,cmap]=rgb2ind(im1,250);
        setappdata(0,'edit1',y);
        axes(handles.axes2);
        imshow(y)
end


% --- Executes during object creation, after setting all properties.
function pop1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in color1.
function color1_Callback(hObject, eventdata, handles)
im1 = getappdata(0,'im1');
red = im1;
red(:,:,2:3) = 0;
setappdata(0,'edit1',red);
axes(handles.axes2);
imshow(red)


% --- Executes on button press in color2.
function color2_Callback(hObject, eventdata, handles)
im1 = getappdata(0,'im1');
green = im1;
green(:,:,1) = 0;
green(:,:,3) = 0;
setappdata(0,'edit1',green);
axes(handles.axes2);
imshow(green)


% --- Executes on button press in color3.
function color3_Callback(hObject, eventdata, handles)
im1 = getappdata(0,'im1');
blue = im1;
blue(:,:,1) = 0;
blue(:,:,2) = 0;
setappdata(0,'edit1',blue);
axes(handles.axes2);
imshow(blue)


% --- Executes on button press in color4.
function color4_Callback(hObject, eventdata, handles)
im1 = getappdata(0,'im1');
yellow = im1;
yellow(:,120,1) = 0;
yellow(:,:,3) = 0;
setappdata(0,'edit1',yellow);
axes(handles.axes2);
imshow(yellow)


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
global im1
im1 = getappdata(0,'im1');
imshow(im1);

% --- Executes on button press in complement.
function complement_Callback(hObject, eventdata, handles)
complement = getappdata(0,'edit1');
y = imcomplement(complement);
setappdata(0,'edit1',y);
axes(handles.axes2);
imshow(y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--COLORS SYSTEMS END


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--SEGMENTATION START
% --- Executes on button press in segemtation1.
function segemtation1_Callback(hObject, eventdata, handles)
global im1
segment = getappdata(0,'im1');
[BW,maskedImage] = segmentImage(segment);
setappdata(0,'edit1',BW);
axes(handles.axes2);
imshow(BW)

% --- Executes on button press in segment2.
function segment2_Callback(hObject, eventdata, handles)
global im1
segment = getappdata(0,'im1');
[BW,maskedImage] = segmentImage(segment);
setappdata(0,'edit1',maskedImage);
axes(handles.axes2);
imshow(maskedImage)

% --- Executes on button press in crop.
function crop_Callback(hObject, eventdata, handles)
crop = getappdata(0,'im1');
y = imcrop(crop);
setappdata(0,'edit1',y);
axes(handles.axes2);
imshow(y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--SEGMENTATION END


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--RESIZE IMAGE START
function edit1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resize.
function resize_Callback(hObject, eventdata, handles)
%take width and height from edit1 & edit2 then resize
resize= getappdata(0,'edit1');
w = str2double(get(handles.edit1,'string'));
h = str2double(get(handles.edit2,'string'));
y = imresize(resize,[h w]);
setappdata(0,'edit1',y);
imshow(y);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--RESIZE IMAGE END



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--ADVANCED START
% --- Executes on button press in rotate1.
function rotate1_Callback(hObject, eventdata, handles)
%rotate to right
rotate = getappdata(0,'edit1');
rotateToRight = imrotate(rotate , -90);
setappdata(0,'edit1',rotateToRight);
axes(handles.axes2);
imshow(rotateToRight)

% --- Executes on button press in rotate2.
function rotate2_Callback(hObject, eventdata, handles)
%rotate to left
rotate = getappdata(0,'edit1');
rotateToLeft = imrotate(rotate , +90);
setappdata(0,'edit1',rotateToLeft);
axes(handles.axes2);
imshow(rotateToLeft)

% --- Executes on button press in rotate3.
function rotate3_Callback(hObject, eventdata, handles)
%rotate 180
rotate = getappdata(0,'edit1');
rotate180 = imrotate(rotate , +180);
setappdata(0,'edit1',rotate180);
axes(handles.axes2);
imshow(rotate180)

% --- Executes on button press in flip1.
function flip1_Callback(hObject, eventdata, handles)
%flip horizonal
f = getappdata(0,'edit1');
y = flip(f,2);
setappdata(0,'edit1',y);
axes(handles.axes2);
imshow(y)

% --- Executes on button press in flip2.
function flip2_Callback(hObject, eventdata, handles)
%flip verticale
f = getappdata(0,'edit1');
y = flip(f,1);
setappdata(0,'edit1',y);
axes(handles.axes2);
imshow(y)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--ADVANCED END


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--SAVE START
% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
%matlab function to save 
format = {'*.png';'*.jpg';'*.tif';'*.gif';'*.*'};
 [filename, pathname] = uiputfile(format, 'Pick an MATLAB code file');
    if isequal(filename,0) || isequal(pathname,0)
       msgbox("user pressed cancel")
    else
        saveImage = getappdata(0,'edit1');
        save = [pathname filename];
        imwrite(saveImage,save,'png')
        if filename
            msgbox('Image saved successfully')
            return
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--SAVE END
