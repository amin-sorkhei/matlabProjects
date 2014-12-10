function [ final_centroids,a_i ] = k_medoids( X_matrix,initial_Centroids )

centroids = initial_Centroids;
final_centroids = centroids;

while(true)
    D = -pdist2(X_matrix,centroids);
    [~,a_i] = max(D,[],2);
    [length,~]=size(centroids);
    for i = 1 : length
        temp = X_matrix(find(a_i == i),:);
        distances = -pdist2(temp,temp);
        totalDisctance = sum(distances,2);
        [~,index] = max(totalDisctance);
        final_centroids(i,:) = temp(index,:);
    end
    if(final_centroids == centroids)
        break;
    else
        centroids=final_centroids;
    end
    
    
end
end

