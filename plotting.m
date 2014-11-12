function[] = plotting(M,polishAlphabet)
[COEFF,~] = princomp(M,'econ');
projection = M * COEFF(:,1:2);
scatter(projection(:,1),projection(:,2))
delta = 2
label = cell(1,36);
label{1} = '-';
for( i = 2 : length(label))
    label{i} = char(polishAlphabet(i-1))    
end
text(projection(:,1)+delta, projection(:,2)+delta, label(2:36));
