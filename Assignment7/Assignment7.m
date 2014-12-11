%Assignment 7
[X Y] = loadmnist(500);
%=====================(a)=====================%
for i = 1 : 10
tmp = X(find(Y == i-1),:)
distinc_centroids(i,:) = tmp(1,:)
end
visual(distinc_centroids);
%=====================(b)=====================%
centroids = X(1:10,:);
[final_centroids,a_i] = k_means(X,centroids);
visual(final_centroids)
for i=1:10
    temp = X(find(a_i == i),:);
    figure
    visual(temp)
end
[final_centroids,a_i] = k_means(X,distinc_centroids);
visual(final_centroids);
for i=1:10
    temp = X(find(a_i == i),:);
    figure
    visual(temp)
end

%=====================(c)=====================%
%=====================(d)=====================%
simMatrix = -pdist2(X,X);
centroids=(1:10)';
[final_centroids,a_i] = k_medoids(simMatrix,centroids);
visual(X(final_centroids,:));
for i=1:10
    temp = X(find(a_i == i),:);
    figure
    visual(temp)
end
for i=1:10
tmp = find(Y==i-1);
distinct_centroids(i,:)=tmp(1);
end
[final_centroids,a_i] = k_medoids(simMatrix,distinct_centroids);
visual(X(final_centroids,:));
for i=1:10
    temp = X(find(a_i == i),:);

    figure
    visual(temp)
end