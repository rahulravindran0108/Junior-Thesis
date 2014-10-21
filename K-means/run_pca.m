%% Initialization
close all; close all; clc
load('ex8data2.mat');
K = size(X,2); 
max_iters = 10;
initial_centroids = kMeansInitCentroids(X, K);
[centroids, idx] = runkMeans(X, initial_centroids, max_iters);

% Subtract the mean to use PCA
[X_norm, mu, sigma] = featureNormalize(X);

% PCA and project the data to 2D
[U, S] = pca(X_norm);
Z = projectData(X_norm, U, 2);
X=Z;
fprintf('%d',size(Z));
% Plot in 2D
figure;
plotDataPoints(Z(:, :), idx(:), K);
save -ascii output.mat Z;
title('Dataset is plotted, using PCA for dimensionality reduction');
fprintf('Program paused. Press enter to continue.\n');
pause;
