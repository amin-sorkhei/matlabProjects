function [ final_centroids,a_i ] = my_k_means( X_matrix,initial_Centroids )
%K_MEANS Summary of this function goes here
%   Detailed explanation goes here
centroids = initial_Centroids;
final_centroids = centroids;

while(true)
    figure
    scatter(final_centroids(:,1),final_centroids(:,2),'+');
    hold on
    D = pdist2(X_matrix,centroids);
    [~,a_i] = min(D,[],2);
    for i = 1 : length(centroids)
        temp = X_matrix(find(a_i == i),:);
        temp
        scatter(temp(:,1),temp(:,2));
        final_centroids(i,:) = mean(temp,1);
        hold on
    end
    if(final_centroids == centroids)
        break;
    else
        centroids=final_centroids;
    end
    hold off
    
end
end

