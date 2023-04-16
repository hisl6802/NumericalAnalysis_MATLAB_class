% read in the data convert to an array, and plot for visualization
% purposes. 

%read in the data
data = readtable("NumericalAnalysis_MATLAB.xlsx");
data = table2array(data);

% plot the data
plot(data(:,1),data(:,2),'r.',MarkerSize=15)
xlabel('x');ylabel('y');title('Simple Example');


