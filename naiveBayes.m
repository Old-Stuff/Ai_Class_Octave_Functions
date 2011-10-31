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

end