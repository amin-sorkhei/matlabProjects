%Assignment 3
%The first step would be loading the first 5000 digits
[X y]=loadmnist(5000);
%creates 100 random numbers in a 10 by 10 matrix
r = randi(5000,10,10);
%shows the labels in reverse order
sanity = y(r);
% in order to fix the reversity 
sanity = transpose(sanity);
%the first 2500 data and corrosponding labels
tr_set = X(1:2500,:);
label_tr_set = y(1:2500,:);
tst_set = X(2501:5000,:);
label_tst_set = y(1:2500,:);
prototype = prototype_cal(tr_set,label_tr_set);
