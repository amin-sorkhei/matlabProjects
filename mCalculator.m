function[M_out] = mCalculator(M_in,polishAlphabet,data)
M = M_in;
for i = 1 : size(M,1)
    M(i,1) = sum(ismember(data,polishAlphabet(i)))
end

for(i = 1 : size(M,1))
    for(j=2 : size(M,2))
        candidate = strcat(polishAlphabet(i),polishAlphabet(j-1));
        candidate = char(candidate);
        x=strfind(data,candidate);
        M(i,j)=sum(~cellfun('isempty', x))
    end
end
M_out = M;
end