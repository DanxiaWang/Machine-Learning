function [cost] = J(theta0, theta1, x, y)

	m = length(x);

	cost = 0;

	for i = 1:m
		cost += error(theta0, theta1, x(i), y(i))^2;
	end

	cost /= 2 * m;

end
