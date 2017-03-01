function varargout = TicTacToe(varargin)
% TICTACTOE M-file for TicTacToe.fig
%      TICTACTOE, by itself, creates a new TICTACTOE or raises the existing
%      singleton*.
%
%      H = TICTACTOE returns the handle to a new TICTACTOE or the handle to
%      the existing singleton*.
%
%      TICTACTOE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TICTACTOE.M with the given input arguments.
%
%      TICTACTOE('Property','Value',...) creates a new TICTACTOE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TicTacToe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TicTacToe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TicTacToe

% Last Modified by GUIDE v2.5 09-Sep-2012 23:14:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TicTacToe_OpeningFcn, ...
                   'gui_OutputFcn',  @TicTacToe_OutputFcn, ...
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


% --- Executes just before TicTacToe is made visible.
function TicTacToe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TicTacToe (see VARARGIN)

% Choose default command line output for TicTacToe
handles.output = hObject;
set(handles.axes1,'Color','k');
set(handles.axes1,'Xlim',[0 3]);
set(handles.axes1,'Ylim',[0 3]);
line([1 1],[0 3],'LineWidth',4,'Color',[0.4 0.3 0.2]);
line([2 2],[0 3],'LineWidth',4,'Color',[0.4 0.3 0.2]);
line([0 3],[1 1],'LineWidth',4,'Color',[0.4 0.3 0.2]);
line([0 3],[2 2],'LineWidth',4,'Color',[0.4 0.3 0.2]);
hold on;
% set(handles.axes1,'visible','off');
% Initial
% user-1 :::::::: player 1 :::::::::::::: computer
% user-2 :::::::: player2  :::::::::::::: palyer
user = 0;res = zeros(3,3);
setappdata(gcf,'user',user);
setappdata(gcf,'res',res);
user = getuser(user);
if user == 1
    ind = think(res);
    res(ind) = user; 
    [x,y,index] = drawpoint1(ind);
    plot(x,y,'gx','Linewidth',60);
    user = getuser(user);
    setappdata(gcf,'user',user);
    setappdata(gcf,'res',res);
    set(handles.text1,'string','Your Turn');
else
    setappdata(gcf,'user',user);
    set(handles.text1,'string','Your Turn');
end
 % Update handles structure
guidata(hObject, handles);

% UIWAIT makes TicTacToe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TicTacToe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.axes1,'visible');
if strcmp(str,'on');
    point = get(handles.axes1,'CurrentPoint');
    [x y ind] = getpoint(point(1),point(3));
    user = getappdata(gcf,'user');
    if user == 2
        a = 0.3*sin(0:1:360);
        b = 0.3*cos(0:1:360);
        x = x.*ones(1,361) + a;
        y = y.*ones(1,361) + b;
        plot(x,y,'-','Linewidth',5);
        set(handles.axes1,'visible','off');
    end
    res = getappdata(gcf,'res');
    res(ind) = user;
    [flag x1 y1] = checkwin(res,user);
    if flag == 2
        f = msgbox('GAME TIED');
        pause(0.5)
        close(TicTacToe);
        if ishandle(f)
            close(f)
        end
        TicTacToe;
    elseif flag == 1
        pause(0.5)
        line(x1,y1,'LineWidth',4,'Color','r');
        pause(0.5)
        f =msgbox('YOU WON');
        pause(0.5)
        close(TicTacToe);
        if ishandle(f)
            close(f)
        end
        TicTacToe;
  else
        set(handles.text1,'string','Computer');
        pause(0.5);
        user = getuser(user);
        ind = think(res);
        if ind == 22
            f = msgbox('GAME TIED');
            pause(0.5)
            close(TicTacToe);
            if ishandle(f)
                close(f)
            end
            TicTacToe;
        end
         res(ind) = user;
        [x,y,index] = drawpoint1(ind);
        set(handles.axes1,'visible','on');
        plot(x,y,'gx','Linewidth',60);
        [flag x1 y1] = checkwin(res,user);
        if flag == 2
            f = msgbox('GAME TIED');
            pause(0.5)
            close(TicTacToe);
            if ishandle(f)
                close(f)
            end
            TicTacToe;
        elseif flag == 1
            pause(0.5)
            line(x1,y1,'LineWidth',4,'Color','r');
            pause(0.5)
            f =msgbox('COMPUTER WON');
            pause(0.5)
            close(TicTacToe);
            if ishandle(f)
                close(f)
            end
            TicTacToe;
        else
            user = getuser(user);
            setappdata(gcf,'user',user);
            setappdata(gcf,'res',res);  
            set(handles.text1,'string','Your Turn');
        end
    end
end
