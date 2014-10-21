%% Initialization
clear ; close all; clc

fprintf('\nRunning K-Means clustering on failing server data set.\n\n');
X = load('output.mat');
% Run your K-Means algorithm on this data
% You should try different values of K and max_iters here
K = 1; 
max_iters = 2;
initial_centroids = kMeansInitCentroids(X, K);
% Run K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters, true);
%computing co-variance

pause;



