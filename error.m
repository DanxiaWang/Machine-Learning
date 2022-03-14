function [err] = error(theta0, theta1, x, y)

	err = h(theta0, theta1, x) - y;

end
