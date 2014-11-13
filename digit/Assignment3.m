%Assignment 3D = pdist2(prototype,tst_set);
%The first step would be loading the first 5000 digits
[X y]=loadmnist(5000);
%creates 100 random numbers in a 10 by 10 matrix
r = randi(5000,10,10);
%shows the labels in reverse order
sanity = y(r);
% in order to fix the reversity 
sanity = transpose(sanity)
%the first 2500 data and corrosponding labels
visual(X(r,:));
tr_set = X(1:2500,:);
label_tr_set = y(1:2500,:);
tst_set = X(2501:5000,:);
label_tst_set = y(1:2500,:);
prototype = prototype_cal(tr_set,label_tr_set);
visual(prototype);
%each row of D, includes the diffrence of 2500 elements in test_set with
%element of that row, for example, 2500 numbers in the first row of D,
%are euclidean distance of 2500 elements in test_set with image zero
D = pdist2(prototype,tst_set);
