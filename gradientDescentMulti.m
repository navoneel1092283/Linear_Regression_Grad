function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters,mu,sigma)
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
	predictions=X*theta;
	for i=1:size(X,2)
		imp=(predictions-y).*X(:,i);
		temp(i,1)=theta(i,1)-(alpha/m)*sum(imp);
	  	theta(i,1)=temp(i,1);
     end
	J_history(iter) = computeCostMulti(X, y, theta);

end
	
end

