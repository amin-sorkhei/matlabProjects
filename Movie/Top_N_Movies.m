function [] = Top_N_Movies(items,ratings,candidatemovie,numberOfTop,MeasurementType)
%this function returns the Top movies specified by variable 'numberOfTop'
%to candidatemovie
%Measurement Type : 1 = Jaccard 2 = Corr
dimension = size(items,2);
movies = zeros(1,dimension);
if(MeasurementType == 1)
    for( i=1:dimension)
        movies(i) = jaccard(ratings,candidatemovie,i);
    end
elseif(MeasurementType == 2)
    for( i=1:dimension)
        
        movies(i) = corrolation(ratings,candidatemovie,i);
        
    end
end
[~,sortedIndex] = sort(movies,'descend');
rank = items(sortedIndex);
rank(1:numberOfTop)
end