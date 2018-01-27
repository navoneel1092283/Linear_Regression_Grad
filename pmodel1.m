function [X1,y,m,n]=pmodel1(data,m,n)
	% Managing Missing Values :
	data = data(~any(isnan(data), 2), :);
	% Selection of the first n-1 columns 
	X1 = data(:,1:n-1);
	% Select the y label
	y = data(:,n);
	[m, n] = size(X1);

