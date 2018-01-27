function[theta,mu,sigma]=featureNormalize(X1,m,n,y,num_iters,alpha)
	[X mu sigma] = fn(X1);
	 X = [ones(m, 1) X];
	 theta = zeros(n+1, 1);
	[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters,mu,sigma);
end
