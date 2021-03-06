%assignment 4
%=================part a=================%
[training_y,training_set] = dataGenerator(500);
training_red = training_set(training_y==0,:);
training_blue = training_set(training_y==1,:);
scatter(training_red(:,1),training_red(:,2),20,[1 0 0]);
hold on
scatter(training_blue(:,1),training_blue(:,2),20,[0 0 1]);
hold off
%=================part b=================%
[test_y,test_set]=dataGenerator(2000);
test_red = test_set(test_y==0,:);
test_blue = test_set(test_y==1,:);
figure
scatter(test_red(:,1),test_red(:,2),20,[1 0 0]);
hold on
scatter(test_blue(:,1),test_blue(:,2),20,[0 0 1]);
hold off
%=================part c=================%
k=[1 3 5 7 9 13 17 21 25 33 41 49 57];
misClassification=zeros(1,length(k));
figure
for i=1:length(k)
    y_hat=kNN(k(i),test_set,training_set,training_y);
    conf_matrix=confusionmat(test_y,y_hat);
    misClassification(i)=(conf_matrix(1,2)+conf_matrix(2,1))/length(test_set);
    plot(k(i),misClassification(i),'*','markersize',8);
    set(gca,'xdir','reverse');
    hold on
end
h1 = plot((k),(misClassification),'g');
set(gca,'xdir','reverse')
hold on

%=================part d=================%
for i=1:length(k)
    y_hat=kNN(k(i),training_set,training_set,training_y);
    conf_matrix=confusionmat(training_y,y_hat);
    misClassification(i)=(conf_matrix(1,2)+conf_matrix(2,1))/length(training_y);
    plot(k(i),misClassification(i),'*','markersize',8);
    set(gca,'xdir','reverse');
    hold on
end
h2=plot((k),(misClassification),'c');
set(gca,'xdir','reverse')
hold on
h3=plot(linspace(0,60,1000),0.11,'r');
legend( [h1 h2],'Test','Train');
%legend( [h_test,h_train,h_bayes] ,['Test','Train','Byes']);



