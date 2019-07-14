function [] = write_file(solution, eTime, name ,arr,table)
edit(strcat(name,'.txt'));
fileID = fopen( strcat(name,'.txt'), 'w');
fprintf(fileID, '\t\t%s\n\n', name);
fprintf(fileID, 'the solution is:\n');
for i = 1 : length(solution)
    fprintf(fileID, '\t%d)\t%f\n', i, solution(i));
end
fprintf(fileID, '\n');
fprintf(fileID, 'Elapsed Time: %f\n', eTime);
switch lower(name)
    case 'gauss elimination'
        
    case 'gauss jordan'
    case 'lu decomposition'
    case 'gauss seidel'
        for i = 1 : size(arr,1)
            for j = 1 : size(arr,2)
                 fprintf(fileID, '\t%d%', arr(i,j));
            end
             fprintf(fileID, '\n');
        end
        writetable(table , 'iter.csv');
        type 'iter.csv';
 
end
fclose(fileID);
string = strcat(name,'.txt');
type string;
end