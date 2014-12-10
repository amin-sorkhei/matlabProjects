function [ final_centroids,a_i ] = k_medoids( X_matrix,initial_Centroids )

centroids = initial_Centroids;
final_centroids = centroids;

while(true)
    figure
    scatter(final_centroids(:,1),final_centroids(:,2),'+');
    hold on
    D = -pdist2(X_matrix,centroids);
    [~,a_i] = max(D,[],2);
    for i = 1 : length(centroids)
        temp = X_matrix(find(a_i == i),:);
        temp
        distances = -pdist2(temp,temp);
        totalDisctance = sum(distances,2);
        [~,index] = max(totalDisctance);
        scatter(temp(:,1),temp(:,2));
        
        final_centroids(i,:) = temp(index,:);
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

