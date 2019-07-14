function [solution,etime , arr] = gauss_seidel (m,sys_of_eqns , intial_guess,max_iter ,eps, handles)
A = zeros(m , m);
tic;
B = zeros(m , 1);
[A  B] = equationsToMatrix(sym(sys_of_eqns));
X = intial_guess;
diag_inverse = eye(m);
arr = zeros(1,2*m);
for i = 1 : m
    if(A(i,i) == 0)
        A(i,i) = 0.000001;
    end
    diag_inverse(i,i) = 1 / A(i,i);
end
LU_mat = ones(m,m);
LU_mat(1:m+1:m*m)=0;
LU_mat = LU_mat .* A;
old_X = zeros(size(X));
iter = 1;
precision=zeros(1,m);
for i = 1 : max_iter
    iter = i;
    old_X = X;
    for j = 1 : m
       X(j) = diag_inverse(j,j) *( B(j) - (LU_mat(j,:)*X)); 
    end 
    err =  abs( (X - old_X) ./ X )  .* 100;
    precision = 100 - err;
    arr(i,:) = [ X'  precision'];
     if (err' < eps*100) == ones(1,m);
        break;
    end
end
solution = X;
if exist('handles', 'var')
    cla(handles.axes1);
    axes(handles.axes1);
end
 etime = toc;
naming_curve = {} ;
table_col = {};
for i = 1 : m
    plot(linspace(1,iter,iter),arr(:,i));
    xlabel('number of iters');
    ylabel('roots');
    hold on;
    naming_curve(end+1) = {strcat('x' , num2str(i))};
    table_col(end+1) = {strcat('x' , num2str(i))};
end
for i = 1 : m
    table_col(end+1) = {strcat('presisionX' , num2str(i))};
end
T = array2table(arr,'VariableNames',table_col);
  set(handles.table,'ColumnName' , table_col);
 set(handles.table, 'ColumnWidth', {m*30});
  legend(naming_curve);
  write_file(solution, etime, 'Gauss seidel',arr,T);
end
