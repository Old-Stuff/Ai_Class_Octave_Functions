function [p_query] = naiveBayes(l1, l2, query, k)

% Function to calculate and provide various aspects of naive bayes

% initialize returned values to be safe
p_query = 0;

% Make sure that l1, l2, and query are Cell arrays
l1 = cellstr(l1);
l2 = cellstr(l2);
query = cellstr(query);

% The first and simplest step will be calculating the probability of the Lists using Laplacian Smoothing via k
p_l1 = (size(l1) + k) / (size(l1) + size(l2) + 2);
p_l2 = (size(l1) + k) / (size(l1) + size(l2) + 2);

% Print to screen the results
fprintf('P(List_1): %f\n', p_l1);
fprintf('P(List_2): %f\n', p_l2);

% Prepare Dictionary
% First We gather our word lists for each group using the wordList Function
l1_words = wordList(l1);
l2_words = wordList(l2);
size_l1 = length(l1_words);
size_l2 = length(l2_words);

dict = union(l1_words,l2_words); % Then a union is preformed on each list to find unique words
size_dict = length(dict); % add variable for size of dictionary

% Prepare Query For Calculations
query_ind = strsplit(char(query), " "); % break up query into individual words
size_query = length(query_ind); % get size of query

% Calculate Probability of words in query for each list

	
end