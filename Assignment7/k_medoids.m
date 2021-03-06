function [ final_centroids,a_i ] = k_medoids( SimilarityMatrix,initial_Centroids )

centroids = initial_Centroids;
final_centroids = centroids;

while(true)
    similarities_to_centroids = SimilarityMatrix(:,centroids);
    [~,a_i] = max(similarities_to_centroids,[],2);
    %a_i = centroids(indices);
    [length,~]=size(centroids);
    for i = 1 : length
        cluster_i = find(a_i == i);
        distance_between_cluster_i = SimilarityMatrix(cluster_i,cluster_i);
        totalDisctance = sum(distance_between_cluster_i,2);
        [~,index] = max(totalDisctance);
        final_centroids(i,:) = cluster_i(index);
    end
    if(final_centroids == centroids)
        break;
    else
        centroids=final_centroids;
    end
    
    
end
end

