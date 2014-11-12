function [] = TopFiveMovies(items,ratings,candidatemovie,nMax)
dimension = size(items,2);
movies = zeros(1,dimension);
for( i=1:dimension)
    movies(i) = jaccard(ratings,candidatemovie,i);
end
for(i = 0 : nMax)
    [c,index] = max(movies);
    items(index)
    movies(index) = 0;
end
end