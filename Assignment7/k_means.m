function [ final_centroids,a_i ] = k_means( X_matrix,initial_Centroids )
%K_MEANS Summary of this function goes here
%   Detailed explanation goes here
centroids = initial_Centroids;
final_centroids = centroids;

while(true)
    
    D = pdist2(X_matrix,centroids);
    [~,a_i] = min(D,[],2);
    [length,~]=size(centroids);
    for i = 1 : length
        temp = X_matrix(find(a_i == i),:);
        final_centroids(i,:) = mean(temp,1);
    end
    final_centroids
    if(final_centroids == centroids)
        break;
    else
        centroids=final_centroids;
    end
end
end

