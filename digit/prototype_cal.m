function[prototype] = prototype_cal(training_set,training_label)
prototype = zeros(10,784);
for i = 0:9
    temp_y_label = find(training_label == i);
    temp_class = training_set(temp_y_label,:);
    prototype(i+1,:) = mean(temp_class,1);
end
end