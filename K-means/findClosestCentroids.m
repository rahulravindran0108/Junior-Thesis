function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);



m = size(X,1);

for i = 1:m
    x = X(i,:);
    dmin = 10000.0;
    for k = 1:K
        dx = x-centroids(k,:);
        d = sqrt(sum(dx .^ 2));
        if d < dmin
            dmin = d;
            idx(i) = k;
        end
    end    
end







% =============================================================

end