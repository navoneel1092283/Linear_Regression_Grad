function [predict,ytest,mtest]=traintest(n,data,theta,mu,sigma)
	Xtest = data(:,1:n);
	ytest = data(:,n+1);
	[mtest,abc] = size(ytest);
	for i=1:mtest
		predict(i)=evaluate(Xtest(i,:),mu,sigma,theta);
	end;
end



