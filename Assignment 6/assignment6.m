[X y] = loadmnist();
X(X==0) = 0.00003;
X_training = X(1:30000,:);
X_test = X(30001:end, :);
Y_training = y(1:30000,:);
Y_test = y(30001:end,:);
w_one_vs_all = zeros(size(X_training,2),10);
for i = 1 : 10
    w_one_vs_all(:,i) = percept(X_training,Y_training,i-1);
end
y_hat_one_vs_one = zeros(30000,10);
for i = 1 : 30000
    y_hat_one_vs_one(i,:)=X_test(i,:)*w_one_vs_all;
end
[~,y_hat_one] = max(y_hat_one_vs_one,[],2);
y_hat_one = y_hat_one - 1;
w_all_vs_all = zeros(size(X_training,2),10);
w_temp = zeros(size(X_training,2),10);
for i=1:10
    for j=1:10
        %if(i ~= j)
        w_temp(:,j) = perceptron_all_vs_all(X_training,Y_training,i-1,j-1);
        %end
    end
    w_all_vs_all(:,i) = sum(w_temp,2);
end

for i = 1 : 30000
    y_hat_all_vs_all(i,:)=X_test(i,:)*w_all_vs_all;
end

[~,y_hat_all] = max(y_hat_all_vs_all,[],2);

y_hat_all = y_hat_all - 1;

c_one_vs_one = confusionmat(Y_test,y_hat_one);
c_all_vs_all = confusionmat(Y_test,y_hat_all);
display(c_one_vs_one)
display(c_all_vs_all)