function[class]=kNN(k,test_set,training_set,training_y,test_y)
distance = pdist2(test_set,training_set);
[~,nearest_neighbours_index] = sort(distance,2,'Ascend');
k_nearest_neighbours_indices=nearest_neighbours_index(:,1:k);
k_nearest_labels= training_y(k_nearest_neighbours_indices);
class = mode(k_nearest_labels,2);
end