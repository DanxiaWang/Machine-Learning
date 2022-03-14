function [d] = JDerivative(theta0, theta1, x, y, j)

	d = 0;
	m = length(y);

	if (j == 0)
		for i = 1:m
			d += error(theta0, theta1, x(i), y(i));
		end
	elseif (j == 1)
		for i = 1:m
			d += error(theta0, theta1, x(i), y(i)) * x(i);
		end
	else
		warning('Encountered a j value different than 0 or 1. j = %d\nThis indicates a bug that needs to be fixed.', j);
	end

	d /= m;

end
