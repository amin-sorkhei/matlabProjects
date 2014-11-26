N = 30;
r = [-3 3];
x_axis = transpose(-3:0.2:2.9);
X_training_set = rand(N,1)*range(r)+min(r);
n = randn(N,1)*0.4;
Y= 2 + X_training_set - 0.5 * X_training_set.^2 + n;
%w = zeros(N,1);
X = ones(N,1);

for k=0:1
    W = pinv(transpose(X)*X)*(transpose(X)*Y);
    %plot(x_axis,W*x_axis);
    X = horzcat(X,X_training_set.^(k+1));
    x_axis = horzcat(x_axis,x_axis.^(k+1));
    %plot(r,W*[-3:3]);
end