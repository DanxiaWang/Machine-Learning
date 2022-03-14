function [theta0, theta1, costs] = gradientDescent(theta0, theta1, x, y, alpha, numIter)

	costs = [J(theta0, theta1, x, y)];

	for i=1:numIter

		theta0New = theta0 - (alpha * JDerivative(theta0, theta1, x, y, 0));
		theta1New = theta1 - (alpha * JDerivative(theta0, theta1, x, y, 1));
		
		theta0 = theta0New;
		theta1 = theta1New;

		costs = [costs J(theta0, theta1, x, y)];

	end

end
