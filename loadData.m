function [x, y] = loadData(filename)
% This function loads x and y vectors

	% Load the data into a matrix
	data = load(filename);

	% Split the matrix into x and y vectors
	x = data(:, 1); 
	y = data(:, 2);

end



