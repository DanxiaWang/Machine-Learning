clear; close all; clc
% Programming exercise 1

fprintf('Loading the data...\n');

[x, y] = loadData('data.txt');

fprintf('\nCheking if data is loaded successfully...\n');

fprintf('Expected length of x: 100\n');
fprintf('   Found length of x: %d\n', length(x));
fprintf('Expected length of y: 100\n');
fprintf('   Found length of y: %d\n', length(y));
fprintf('Expected value of x(12): -2.147754\n');
fprintf('   Found value of x(12): %f\n', x(12));
fprintf('Expected value of y(33): -4.826270\n');
fprintf('   Found value of y(33): %f\n', y(33));

fprintf('\nPress enter to move forward.\n');
pause;

fprintf('Plotting data...\n');
plotData(x, y, 'x', 'y');
fprintf('Please check if the plot seems right.\n');

fprintf('\nPress enter to move forward.\n');
pause;

fprintf('Checking if the function h works right...\n');

fprintf('  Expected value of h(3, 4, 2): 11\n');
fprintf('Calculated value of h(3, 4, 2): %f\n', h(3, 4, 2));
fprintf('  Expected value of h(2, -10, 30): -298\n');
fprintf('Calculated value of h(2, -10, 30): %f\n', h(2, -10, 30));

fprintf('\nPress enter to move forward.\n');
pause;

fprintf('Checking if the error function works right...\n');

fprintf('  Expected value of error(3, 4, 2, 10): 1\n');
fprintf('Calculated value of error(3, 4, 2, 10): %f\n', error(3, 4, 2, 10));
fprintf('  Expected value of error(2, -10, 30, -200): -98\n');
fprintf('Calculated value of error(2, -10, 30, -200): %f\n', error(2, -10, 30, -200));

fprintf('\nPress enter to move forward.\n');
pause;

fprintf('Checking if the function J works right...\n');

fprintf('  Expected value of J(2, 1, x, y): 36.442028\n');
fprintf('Calculated value of J(2, 1, x, y): %f\n', J(2, 1, x, y));
fprintf('  Expected value of J(-2, 4, x, y): 162.000291\n');
fprintf('Calculated value of J(-2, 4, x, y): %f\n', J(-2, 4, x, y));

fprintf('\nPress enter to move forward.\n');
pause;

fprintf('Checking if the function JDerivative works right...\n');

fprintf('  Expected value of JDerivative(2, 1, x, y, 0): -0.605643\n');
fprintf('Calculated value of JDerivative(2, 1, x, y, 0): %f\n', JDerivative(2, 1, x, y, 0));
fprintf('  Expected value of JDerivative(2, 1, x, y, 1): 25.012044\n');
fprintf('Calculated value of JDerivative(2, 1, x, y, 1): %f\n', JDerivative(2, 1, x, y, 1));

fprintf('\nPress enter to move forward.\n');
pause;

fprintf('Checking if gradientDescent finds optimal theta values...\n');

alpha = 0.1;
numIter = 100;

[theta0, theta1] = gradientDescent(0, 0, x, y, alpha, numIter);
fprintf('  Expected value of theta0: 2.973844\n');
fprintf('Calculated value of theta0: %f\n', theta0);
fprintf('  Expected value of theta1: -1.711501\n');
fprintf('Calculated value of theta1: %f\n', theta1);

% Plot the model on the data
hold on; % continue on the previous plot
plot(x, h(theta0, theta1, x), '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure


fprintf('\nPress enter to move forward.\n');
pause;


fprintf('Plotting the changing cost with each gradientDescent step...\n');

[theta0, theta1, costs] = gradientDescent(0, 0, x, y, alpha, numIter);

plotData(0:(length(costs)-1), costs, 'iteration', 'cost');





