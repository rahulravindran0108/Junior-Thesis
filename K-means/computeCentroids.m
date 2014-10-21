function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

%
centroids = zeros(K, n);

for c=1:K,
  count = 0;
  for i=1:m,
    if idx(i) == c,
      centroids(c,:) = centroids(c,:) + X(i,:);
      count = count + 1;
    end
  end
  if count > 0,
    centroids(c,:) = centroids(c,:) ./ count;
  end
end
  








% =============================================================


end
