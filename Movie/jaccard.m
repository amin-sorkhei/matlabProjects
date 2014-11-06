function[jc] = jaccard(ratings,movieID1,movieID2)

%people who has watched the first movie
whoRated1Index = find(ratings(:,2) == movieID1);
whoRated1 = ratings(whoRated1Index,1);

%people who has watched the second movie
whoRated2Index = find(ratings(:,2) == movieID2);
whoRated2 = ratings(whoRated2Index,1);

ratedBoth = intersect(whoRated1,whoRated2);
NumofRatedBoth = size(ratedBoth,1);

AtLeastRatedOne = union(whoRated1,whoRated2);
NumofAtleastRatedOne = size(AtLeastRatedOne,1);

jc = NumofRatedBoth / NumofAtleastRatedOne
end