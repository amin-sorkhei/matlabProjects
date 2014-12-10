%Assignment 7
[X Y] = loadmnist(500);
%=====================(a)=====================%
%=====================(b)=====================%
centroids = X(1:10,:);
[final_centroids,a_i] = k_means(X,centroids);
visual(final_centroids)
for i=1:10
    temp = X(find(a_i == i),:);
    centroids(i,:) = temp(1,:)
    figure
    visual(temp)
end
[final_centroids,a_i] = k_means(X,centroids);
visual(final_centroids);
for i=1:10
    temp = X(find(a_i == i),:);
    centroids(i,:) = temp(1,:)
    figure
    visual(temp)
end

%=====================(c)=====================%
%=====================(d)=====================%
centroids = X(1:10,:);
[final_centroids,a_i] = k_medoids(X,centroids);
visual(final_centroids)
for i=1:10
    temp = X(find(a_i == i),:);
    centroids(i,:) = temp(1,:)
    figure
    visual(temp)
end
[final_centroids,a_i] = k_medoids(X,centroids);
visual(final_centroids);
for i=1:10
    temp = X(find(a_i == i),:);
    centroids(i,:) = temp(1,:)
    figure
    visual(temp)
end