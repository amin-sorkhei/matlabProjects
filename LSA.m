data = textread('refinedWords.txt', '%s', 'delimiter', ' ');
polishAlphabet = load('alphabet.mat')
polishAlphabet = polishAlphabet.alphabet;
M = zeros(35,36);
% counts the number of occurence of a letter alone = as a separate word
M = mCalculator(M,polishAlphabet,data)
%Plotting