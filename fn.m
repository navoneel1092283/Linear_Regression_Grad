function [X_norm, mu, sigma] = fn(X)
	X_norm = X;
	mu = zeros(1, size(X, 2));
	sigma = zeros(1, size(X, 2));
	for i=1:size(X,2)
		mu(i)=mean(X(:,i));
		X_norm(:,i)=X(:,i).-mu(i);
	end;
	for i=1:size(X,2)
		sigma(i)=std(X(:,i));
		X_norm(:,i)=X_norm(:,i)./sigma(i);
	end;
end

