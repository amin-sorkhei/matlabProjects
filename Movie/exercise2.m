%%%%%%% AMIN SORKHEI%%%INTRODUCTION TO MACHINE LEARNING
%loading data
[ratings items userids itemids] = loadmovielens();
% jaccard coefficient for ToyStory = 1 and GoldenEye = 2
jaccard_coef = jaccard(ratings,1,2);
display('jaccard coeff for ToyStory and GoldenEye ')
display(jaccard_coef);

% jaccard coefficient for Three Colors: Red = 59 and Three Colors: Blue =
% 60
jaccard_coef = jaccard(ratings,59,60);
display('jaccard coeff for Three Colors: Red and Three Colors: Blue ')
display(jaccard_coef);
%Top Five movies related to Taxi Driver = 23:
display('this is the top five movies to taxi driver using jaccard')
Top_N_Movies(items,ratings,23,6,1)

%------------------------------------------part two
%the correlation coefficient for ToyStory = 1 and GoldenEye = 2
display('correlation coeff for ToyStory and GoldenEye ')
correlation = corrolation(ratings,1,2);
display(correlation);

% the corrolation coefficient for Three Colors: Red = 59 and Three Colors: Blue =
% 60
display('correlation coeff for Three Colors: Red and Three Colors: Blue')
correlation = corrolation(ratings,59,60);
display(correlation)
%Top Five movies related to Taxi Driver = 23:
display('this is the top five movies to taxi driver using corr coefficient')
Top_N_Movies(items,ratings,23,6,2)





