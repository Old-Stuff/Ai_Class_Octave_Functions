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
dict=strsplit(char(l1(1)), " "); %Initialize Dictionary With Strings from first row of first list
n = length(l1);

% iterate through first list and add unique words to dictionary
if n >= 2
	for i = 2:n
		dict=union(dict, strsplit(char(l1(i)), " "));
	end
end

% iterate through second list and add unique words to dictionary
n = length(l2);

for i = 1:n
	dict=union(dict, strsplit(char(l2(i)), " "));
end

% add variable for size of dictionary
size_dict = length(dict);

% break up query into individual words
query_ind = strsplit(char(query), " ");

% get size of query
size_query = length(query_ind);

% Array to store values for individual words of query
p_query = zeros(size_query, 2);

% Calculate Probability of words in query for each list

	
end