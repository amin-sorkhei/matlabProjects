function [  ] = visualize( centroids, X, a_i )
%Outputs the clusters and the assigned medoid for each cluster
    for i=1:size(centroids,1),
        members_of_Cluster = X(a_i==i,:);
        subplot(5,4,2*i-1);
        visual(centroids(i,:));
        subplot(5,4,2*i);
        visual(members_of_Cluster);

    end

end