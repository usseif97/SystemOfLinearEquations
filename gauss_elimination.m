%systems of equations vector of strings
%n the number of equations
function [solution, etime , steps] = gauss_elimination(m,sys_of_eqns)
A = zeros(m , m);
B = zeros(m , 1);
[A  B] = equationsToMatrix(sym(sys_of_eqns));
% forward subs
solution = zeros(m,1);
tic
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
     steps(1:end,1:end,i) = [A B];
end
solution(m) = B(m) / A(m,m);

for i = m-1 : -1 : 1
    sum = 0;
    for j = i+1 : m
        sum = sum + A(i,j)*solution(j);
    end
    solution(i) = (B(i)-sum) / A(i,i);
end
etime = toc;
write_file(solution, etime, 'Gauss Elimination',steps);
end