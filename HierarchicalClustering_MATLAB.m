%% Cluster the data 
%read in the data
data = readtable("NumericalAnalysis_MATLAB.xlsx");
X = table2array(data);

% dists = pdist(data, "euclidean");
[idx,C] = kmeans(X,3,'Distance','sqeuclidean',...
    'Replicates',5);

figure;
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
plot(X(idx==3,1),X(idx==3,2),'g.','MarkerSize',12)
plot(C(:,1),C(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3) 
legend('Cluster 1','Cluster 2','Centroids',...
       'Location','NE')
title 'Cluster Assignments and Centroids'
hold off