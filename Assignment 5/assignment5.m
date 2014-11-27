N = 30;
r = [-3 3];
x_axis = ones(1,30);
X_training_set = rand(N,1)*range(r)+min(r);
n = randn(N,1)*0.4;
Y= 2 + X_training_set - 0.5 * X_training_set.^2 + n;
%w = zeros(N,1);
X = ones(N,1);
subplot(6,2,1)
scatter(X_training_set,Y)
for k=0:10
    W = pinv(transpose(X)*X)*(transpose(X)*Y);
    subplot(6,2,k+2);
    Y_hat = transpose(W)*transpose(X);
    r_two(k+1)=1- sum(((transpose(Y)-Y_hat).^2)/(sum((transpose(Y)-mean((transpose(Y))).^2))))
    scatter(X_training_set,Y)
    hold on
    plot(-3:0.2:2.9,transpose(W)*x_axis);
    X = horzcat(X,X_training_set.^(k+1));
    x_axis = vertcat(x_axis,(-3:0.2:2.9).^(k+1));
end