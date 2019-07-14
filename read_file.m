function[] = read_file(file_path,handles)
fileID = fopen(file_path,'r');
n = fgetl(fileID) ; 
set(handles.no_of_eqns , 'String' ,num2str (n));
equations = [];
m = str2num(n);
for i = 1 : m
    e = fgetl(fileID) ;
    equations = strvcat(equations ,e);
end
set(handles.equations , 'String' , equations);
method = fgetl(fileID) ;
set(handles.choose_method, 'enable','on');
set(handles.all_methods, 'value' , 0);
switch lower(method)
    case 'gaussian-elimination'
         set(handles.choose_method, 'value',2);
    case 'gaussian-jordan'
        set(handles.choose_method, 'value',4);
    case 'lu-decomposition'
        set(handles.choose_method, 'value',3);
    case 'gauss-seidel'
        set(handles.intialGuesses, 'enable','on');
        set(handles.eps, 'enable' , 'on');
        set(handles.choose_method, 'value',5);
        guess = fgetl(fileID) ;
        set(handles.intialGuesses , 'String',guess);
        numberiter = fgetl(fileID) ;
        set(handles.iter , 'String',numberiter);
        eps = fgetl(fileID) ;
        set(handles.eps , 'String',eps);
    case 'all methods'
        set(handles.intialGuesses, 'enable','on');
        set(handles.eps, 'enable' , 'on');
        set(handles.choose_method, 'enable','off');
        set(handles.all_methods, 'value' , 1);
        guess = fgetl(fileID) ;
        set(handles.intialGuesses , 'String',guess);
        numberiter = fgetl(fileID) ;
        set(handles.iter , 'String',numberiter);
        eps = fgetl(fileID) ;
        set(handles.eps , 'String',eps);
    
    
end


end