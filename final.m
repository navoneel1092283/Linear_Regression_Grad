function [mae,rmse] = final(predict,ytest,mtest)
	mae=mean(abs(predict-ytest'));
	se=(predict-ytest').^2;
	mse=mean(se);
	rmse=mse^(0.5);
end