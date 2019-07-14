function varargout = GUI_part2(varargin)
% GUI_PART2 MATLAB code for GUI_part2.fig
%      GUI_PART2, by itself, creates a new GUI_PART2 or raises the existing
%      singleton*.
%
%      H = GUI_PART2 returns the handle to a new GUI_PART2 or the handle to
%      the existing singleton*.
%
%      GUI_PART2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PART2.M with the given input arguments.
%
%      GUI_PART2('Property','Value',...) creates a new GUI_PART2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_part2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_part2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_part2

% Last Modified by GUIDE v2.5 06-May-2019 15:59:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_part2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_part2_OutputFcn, ...
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


% --- Executes just before GUI_part2 is made visible.
function GUI_part2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_part2 (see VARARGIN)

% Choose default command line output for GUI_part2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_part2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_part2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in choose_method.
function choose_method_Callback(hObject, eventdata, handles)
% hObject    handle to choose_method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns choose_method contents as cell array
%        contents{get(hObject,'Value')} returns selected item from choose_method

switch get(hObject,'Value')
    case 2
       set(handles.eps,'enable','off');
       set(handles.intialGuesses,'enable','off');
    case 3
       set(handles.eps,'enable','off');
       set(handles.intialGuesses,'enable','off');
    case 4
       set(handles.eps,'enable','off');
       set(handles.intialGuesses,'enable','off'); 
    case 5
       set(handles.eps,'enable','on');
       set(handles.intialGuesses,'enable','on'); 
end




% --- Executes during object creation, after setting all properties.
function choose_method_CreateFcn(hObject, eventdata, handles)
% hObject    handle to choose_method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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



function equations_Callback(hObject, eventdata, handles)
% hObject    handle to equations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equations as text
%        str2double(get(hObject,'String')) returns contents of equations as a double


% --- Executes during object creation, after setting all properties.
function equations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no_of_eqns_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_eqns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_of_eqns as text
%        str2double(get(hObject,'String')) returns contents of no_of_eqns as a double


% --- Executes during object creation, after setting all properties.
function no_of_eqns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_eqns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function intialGuesses_Callback(hObject, eventdata, handles)
% hObject    handle to intialGuesses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intialGuesses as text
%        str2double(get(hObject,'String')) returns contents of intialGuesses as a double


% --- Executes during object creation, after setting all properties.
function intialGuesses_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intialGuesses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in solveBtn.
function solveBtn_Callback(hObject, eventdata, handles)
% hObject    handle to solveBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



if ~get(handles.all_methods, 'value')

    method = get(handles.choose_method, 'value');
    switch method
        case 2  % Gauss-Elimination %
            n = get(handles.no_of_eqns, 'String');
            equ = get(handles.equations, 'String') %Array Of Strings%
          eqns = {} ;
            for i= 1 : str2num(n)
                  eqns(end +1) = {equ(i,:)};
            end
            [sol , etime,steps_string] = gauss_elimination(str2num(n),eqns);
            sol = num2str(sol);
            set(handles.solution ,'String',sol );
             s = [];
             for i= 1 : str2num(n)
                  s = strvcat(s,num2str(i));
             end
             set(handles.choose_step, 'String',s);
             
             val= get(handles.choose_step, 'value');
             set(handles.steps , 'Data' , steps_string(:,:,val));
             table_col={};
             for i = 1 : str2num(n)
                 table_col(end+1) = {strcat('A' , num2str(i))};
             end
              table_col(end+1) = {'B' };
              set(handles.steps,'ColumnName' , table_col);
              handles.steps_string= steps_string;
              guidata(hObject,handles);
              set(handles.time, 'String' , strcat(num2str(etime),'sec'));
            
        case 3  % LU-Decomposition %
            n = get(handles.no_of_eqns, 'String');
            equ = get(handles.equations, 'String'); %Array Of Strings%
            eqns = {} ;
            for i= 1 : str2num(n)
                  eqns(end +1) = {equ(i,:)};
            end
            [sol,etime,steps_string] = LU_Decomposition(str2num(n),eqns);            
            sol = num2str(sol);
            set(handles.solution ,'String',sol);
        
             set(handles.steps , 'Data' , steps_string,'ColumnFormat',{'numeric'});
             table_col={};
             for i = 1 : str2num(n)
                 table_col(end+1) = {strcat('L' , num2str(i))};
             end
             table_col(end+1) = {'Y' };
             table_col(end+1) = {'B' };
             for i = 1 : str2num(n)
                 table_col(end+1) = {strcat('U' , num2str(i))};
            end
             table_col(end+1) = {'X' };
             table_col(end+1) = {'Y' };
              set(handles.steps,'ColumnName' , table_col);
               set(handles.time, 'String' , strcat(num2str(etime),'sec'));
            
        case 4  %gauss_jordon%
            n = get(handles.no_of_eqns, 'String');
            equ = get(handles.equations, 'String'); %Array Of Strings%
            eqns = {} ;
            for i= 1 : str2num(n)
                  eqns(end +1) = {equ(i,:)};
            end
            [sol,etime,steps_string] = gauss_jordon(str2num(n),eqns);
            sol = num2str(sol);
             set(handles.solution ,'String',sol );
             s = [];
             for i= 1 : str2num(n)
                  s = strvcat(s,num2str(i));
             end
             set(handles.choose_step, 'String',s);
             val= get(handles.choose_step, 'value');
             set(handles.steps , 'Data' , steps_string(:,:,val));
             table_col={};
             for i = 1 : str2num(n)
                 table_col(end+1) = {strcat('A' , num2str(i))};
             end
              table_col(end+1) = {'B' };
              set(handles.steps,'ColumnName' , table_col);
              handles.steps_string= steps_string;
              guidata(hObject,handles);
               set(handles.time, 'String' , strcat(num2str(etime),'sec'));
            
             
        case 5  %Gauss-Siedel%
            set(handles.table,'visible','on');
            set(handles.axes1,'visible','on');
            n = get(handles.no_of_eqns, 'String');
            equ = get(handles.equations, 'String'); %Array Of Strings%
            guess = get(handles.intialGuesses, 'String'); %Array Of Strings%
            guess = str2num(guess); %Array Of Strings%
            iteration = get(handles.iter, 'String'); %Array Of Strings%
            iteration = str2num(iteration) ;%Array Of Strings%
            eps = get(handles.eps, 'String'); %Array Of Strings%
            eps = str2num(eps) ;%Array Of Strings%
            if isempty(eps)
                eps = 0.00001;    
            end
            eqns = {} ;
            for i= 1 : str2num(n)
                  eqns(end +1) = {equ(i,:)};
            end
            [sol ,etime , arr] = gauss_seidel (str2num(n),eqns, guess' ,iteration,eps ,handles);
            table_as_cell = num2cell(arr);
            set(handles.table, 'Data', table_as_cell);
            set(handles.solution ,'String',sol);
               set(handles.time, 'String' , strcat(num2str(etime),'sec'));
            
    end
else
            %guess seidel
            time = [];
            set(handles.table,'visible','on');
           set(handles.axes1,'visible','on');
            full_solution ={};
            n = get(handles.no_of_eqns, 'String');
            equ = get(handles.equations, 'String'); %Array Of Strings%
            guess = get(handles.intialGuesses, 'String'); %Array Of Strings%
            guess = str2num(guess); %Array Of Strings%
            iteration = get(handles.iter, 'String'); %Array Of Strings%
            iteration = str2num(iteration) ;%Array Of Strings
            handles.n = str2num(n);
            if isempty(iteration)
                iteration = 50;    
            end
            eps = get(handles.eps, 'String'); %Array Of Strings%
            eps = str2num(eps) ;%Array Of Strings%
            if isempty(eps)
                eps = 0.00001;    
            end
            eqns = {} ;
            for i= 1 : str2num(n)
                  eqns(end +1) = {equ(i,:)};
            end
            [sol, etime,arr] = gauss_seidel (str2num(n),eqns, guess' ,iteration,eps ,handles);
            table_as_cell = num2cell(arr);
            set(handles.table, 'Data', table_as_cell);
            full_solution(end+1) = {'guess seidel'};
            full_solution(end+1) = {sol};
            time = strvcat( time, strcat( 'gauss seidel :',num2str(etime),'sec    '));
          
            % gauss elimination
            [sol , etime,ge_steps] = gauss_elimination(str2num(n),eqns);
            handles.ge_steps = ge_steps;
            sol = num2str(sol);
            full_solution(end+1) = {'gauss elimination'};
            full_solution(end+1) = {sol};
            time  = strvcat(time,strcat('gauss elimination: ',num2str(etime),'sec ' ));
   
            %gauss jordon
            [sol ,etime, gj_steps] = gauss_jordon(str2num(n),eqns);
            handles.gj_steps = gj_steps;
            full_solution(end+1) = {'gauss jordon'};
            sol = num2str(sol);
            full_solution(end+1) = {sol};
            time = strvcat(time,strcat('gauss jordon :',num2str(etime),'sec   '));
        
             %LU_Decomposition
            [sol,etime,lu_steps] = LU_Decomposition(str2num(n),eqns);
            handles.lu_steps = lu_steps;
            sol = num2str(sol);
            full_solution(end+1) = {'LU Decomposition'};
            full_solution(end+1) = {sol};
             time = strvcat(time,strcat('LU Decomposition :',num2str(etime),'sec     '));
        
             time
            % full solution
            set(handles.solution , 'String' ,full_solution );
            set(handles.time,'String' ,time);
            guidata(hObject,handles);
end




% --- Executes on button press in all_methods.
function all_methods_Callback(hObject, eventdata, handles)
% hObject    handle to all_methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of all_methods
if (get(hObject,'Value'))
    set(handles.choose_method,'enable','off');
    set(handles.eps,'enable','on');
    set(handles.intialGuesses,'enable','on'); 
   
else
    set(handles.choose_method,'enable','on');
end



% --- Executes during object creation, after setting all properties.
function all_methods_CreateFcn(hObject, eventdata, handles)
% hObject    handle to all_methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




function iter_Callback(hObject, eventdata, handles)
% hObject    handle to iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter as text
%        str2double(get(hObject,'String')) returns contents of iter as a double


% --- Executes during object creation, after setting all properties.
function iter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function solution_Callback(hObject, eventdata, handles)
% hObject    handle to solution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of solution as text
%        str2double(get(hObject,'String')) returns contents of solution as a double


% --- Executes during object creation, after setting all properties.
function solution_CreateFcn(hObject, eventdata, handles)
% hObject    handle to solution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eps_Callback(hObject, eventdata, handles)
% hObject    handle to eps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eps as text
%        str2double(get(hObject,'String')) returns contents of eps as a double


% --- Executes during object creation, after setting all properties.
function eps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function steps_Callback(hObject, eventdata, handles)
% hObject    handle to steps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of steps as text
%        str2double(get(hObject,'String')) returns contents of steps as a double


% --- Executes during object creation, after setting all properties.
function steps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to steps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to steps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of steps as text
%        str2double(get(hObject,'String')) returns contents of steps as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to steps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in choose_method_step.
function choose_method_step_Callback(hObject, eventdata, handles)
% hObject    handle to choose_method_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     val = get( hObject,'value');
    switch val
        case 2 %gauss-eliminaton
            steps_string = handles.ge_steps;
             s = [];
             for i= 1 : handles.n
                  s = strvcat(s,num2str(i));
             end
             set(handles.choose_step, 'String',s);
             val= get(handles.choose_step, 'value');
             set(handles.steps , 'Data' , steps_string(:,:,val));
             table_col={};
             for i = 1 :  handles.n
                 table_col(end+1) = {strcat('A' , num2str(i))};
             end
              table_col(end+1) = {'B' };
              set(handles.steps,'ColumnName' , table_col);
              guidata(hObject,handles);
        case 3 %lu decmop
             set(handles.steps , 'Data' , handles.lu_steps,'ColumnFormat',{'numeric'});
             table_col={};
             for i = 1 : handles.n
                 table_col(end+1) = {strcat('L' , num2str(i))};
             end
             set(handles.choose_step, 'String',[]);
             table_col(end+1) = {'Y' };
             table_col(end+1) = {'B' };
             for i = 1 : handles.n
                 table_col(end+1) = {strcat('U' , num2str(i))};
            end
             table_col(end+1) = {'X' };
             table_col(end+1) = {'Y' };
             set(handles.steps,'ColumnName' , table_col);
            
        case 4
            steps_string = handles.gj_steps;
            s = [];
             for i= 1 : handles.n
                  s = strvcat(s,num2str(i));
             end
             set(handles.choose_step, 'String',s);
             val= get(handles.choose_step, 'value');
             set(handles.steps , 'Data' , steps_string(:,:,val));
             table_col={};
             for i = 1 :  handles.n
                 table_col(end+1) = {strcat('A' , num2str(i))};
             end
              table_col(end+1) = {'B' };
              set(handles.steps,'ColumnName' , table_col);
              guidata(hObject,handles);
        
    end
% Hints: contents = cellstr(get(hObject,'String')) returns choose_method_step contents as cell array
%        contents{get(hObject,'Value')} returns selected item from choose_method_step


% --- Executes during object creation, after setting all properties.
function choose_method_step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to choose_method_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in choose_step.
function choose_step_Callback(hObject, eventdata, handles)
% hObject    handle to choose_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~get(handles.all_methods, 'value')
    set(handles.steps , 'Data' , handles.steps_string(:,:,get(hObject, 'value')));
else
    val =  get(handles.choose_method_step, 'value');
    switch val
        case 2 %gauss-eliminaton
            steps_string = handles.ge_steps;
             val= get(hObject, 'value');
             set(handles.steps , 'Data' , steps_string(:,:,val));
             table_col={};
             for i = 1 :  handles.n
                 table_col(end+1) = {strcat('A' , num2str(i))};
             end
              table_col(end+1) = {'B' };
              set(handles.steps,'ColumnName' , table_col);
              handles.steps_string= steps_string;
              guidata(hObject,handles);
        case 3 %lu decmop
             set(handles.steps , 'Data' , handles.lu_steps,'ColumnFormat',{'numeric'});
             table_col={};
             for i = 1 : handles.n
                 table_col(end+1) = {strcat('L' , num2str(i))};
             end
             table_col(end+1) = {'Y' };
             table_col(end+1) = {'B' };
             for i = 1 : handles.n
                 table_col(end+1) = {strcat('U' , num2str(i))};
            end
             table_col(end+1) = {'X' };
             table_col(end+1) = {'Y' };
             set(handles.steps,'ColumnName' , table_col);
            
        case 4 % gauss - jordon
              steps_string = handles.gj_steps;
            s = [];
             for i= 1 : handles.n
                  s = strvcat(s,num2str(i));
             end
             set(hObject, 'String',s);
             val= get(hObject, 'value');
             set(handles.steps , 'Data' , steps_string(:,:,val));
             table_col={};
             for i = 1 :  handles.n
                 table_col(end+1) = {strcat('A' , num2str(i))};
             end
              table_col(end+1) = {'B' };
              set(handles.steps,'ColumnName' , table_col);
              guidata(hObject,handles);
        
    end
        
end


% Hints: contents = cellstr(get(hObject,'String')) returns choose_step contents as cell array
%        contents{get(hObject,'Value')} returns selected item from choose_step


% --- Executes during object creation, after setting all properties.
function choose_step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to choose_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in steps.
function steps_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to steps (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in steps.
function steps_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to steps (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function open_tool_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to open_tool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path] = uigetfile('*.txt');
if isequal(file,0)
   disp('User selected Cancel');
else
    read_file( fullfile(path,file) , handles);
   disp(['User selected ', fullfile(path,file)]);
end

