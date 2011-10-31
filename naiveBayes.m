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

% Calculate Size of Vocabulary 
% First We gather our word lists for each group using the wordList Function
l1_words = wordList(l1);
l2_words = wordList(l2);

% Then a union is preformed on each list to find unique words
dict = union(l1_words,l2_words);

% add variable for size of dictionary
size_dict = length(dict);

% break up query into individual words
query_ind = strsplit(char(query), " ");

% get size of query
size_query = length(query_ind);

% Array to store values for individual words of query
p_query = zeros(size_query, 2);

% 

% Calculate Probability of words in query for each list

	
end