%systems of equations vector of strings
%m the number of equations
function [solution ,etime , steps] = gauss_jordon(m,sys_of_eqns)
A = zeros(m , m);
tic;
B = zeros(m , 1);
[A  B] = equationsToMatrix(sym(sys_of_eqns));
% forward subs
solution = zeros(m,1);
x_mat = {};
for i = 1 : m 
    x_string = strcat('[','x' , num2str(i),']');
    x_mat(:,end+1) = {x_string};
end
x_mat = x_mat';
steps = zeros(m,m+1,m);
for i = 1 : m  
    for j = i+1 : m
        if A(i,i) == 0
            A(i,i) = 0.00001;
        end
        mij = A(j,i) / A(i,i);
        tempA = A(i,:) .* mij;
        tempB = B(i,:) .* mij;
        A(j,:) =  A(j,:) - tempA;
        B(j,:) =  B(j,:) - tempB;
    end
    for j = 1 : i-1 
        if A(i,i) == 0
            A(i,i) = 0.00001;
        end
         mij = A(j,i) / A(i,i);
        tempA = A(i,:) .* mij;
        tempB = B(i,:) .* mij;
        A(j,:) =  A(j,:) - tempA;
        B(j,:) =  B(j,:) - tempB;
    end
   steps(1:end,1:end,i) = [A B];
end
for i = 1 : m
    solution(i) = B(i) / A(i,i); 
end
etime = toc;
write_file(solution, etime, 'Gauss jordan',steps);

end