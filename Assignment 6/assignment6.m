[X y] = loadmnist();
X_training = X(1:30000,:);
X_test = X(30001:end, :);
Y_training = y(1:30000,:);
Y_test = y(30001:end,:);
w_one_vs_all = zeros(size(X_training,2),10);
for i = 1 : 10
    w_one_vs_all(:,i) = percept(X_training,Y_training,i-1);
end
y_hat = zeros(30000,10);
for i = 1 : 30000
y_hat(i,:)=X_test(i,:)*w_one_vs_all;
end
