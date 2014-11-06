function[x,y] = corrolation(ratings,movieID1,movieID2)
%calculation for movieID1
whoRated1Index = find(ratings(:,2) == movieID1);
whoRated1 = ratings(whoRated1Index,1)
%calculation for movieID2
whoRated2Index = find(ratings(:,2) == movieID2);
whoRated2 = ratings(whoRated2Index,1)

Rated1and2 = intersect(whoRated1,whoRated2)
%tmpdata contains the information of people who have rated both movies
recordID1 =(ismember(ratings(:,1),Rated1and2))&(ratings(:,2)==movieID1)
tmp = ratings(:,2)==movieID1

%To narrow down the domain of the search, we pick only ratings relevent to
%either of the movies




end