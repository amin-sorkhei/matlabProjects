function[y,x] = ranGenerator(n)
%generates n random 0s and 1s
y=round(rand(n,1));
x=zeros(n,2);
%draw sample x from the distributions based on the value of y
x(find(y==0),:) = cell2mat(arrayfun(@(x) randn(1,2),find(y==0),'UniformOutput',0));
x(find(y==1),:) = cell2mat(arrayfun(@(x) 4*randn(1,2),find(y==1),'UniformOutput',0));
end
