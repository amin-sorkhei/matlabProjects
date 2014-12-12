%Assignment 7
[X Y] = loadmnist(500);
%=====================(a)=====================%
for i = 1 : 10
tmp = X(find(Y == i-1),:);
distinc_centroids(i,:) = tmp(1,:);
end
%=====================(b)=====================%
centroids = X(1:10,:);
[final_centroids,a_i] = k_means(X,centroids);
figure
visualize(final_centroids,X,a_i);


[final_centroids,a_i] = k_means(X,distinc_centroids);
figure
visualize(final_centroids,X,a_i);

%=====================(c)=====================%
%=====================(d)=====================%
simMatrix = -pdist2(X,X);
centroids=(1:10)';
[final_centroids,a_i] = k_medoids(simMatrix,centroids);
figure
visualize(X(final_centroids,:),X,a_i);


for i=1:10
tmp = find(Y==i-1);
distinct_centroids(i,:)=tmp(1);
end
[final_centroids,a_i] = k_medoids(simMatrix,distinct_centroids);
figure
visualize(X(final_centroids,:),X,a_i);