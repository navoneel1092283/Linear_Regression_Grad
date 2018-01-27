function p=evaluate(X,mu,sigma,theta)
	xn=X-mu;
	X_n=xn./sigma;
	p=[1 X_n]*theta;
end

