function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
l = [1, 0];
% You need to return the following variables correctly 
mask = ones(size(theta));
mask(1) = 0;

J = (1/(2*m)) * sum(((X*theta) - y).^2) + (lambda/ (2 * m))* (sum(theta(2:end,:).^2));
b= (1/m) * ((((X*theta) - y)' * X )'+ (lambda *  (theta.* mask)));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = zeros(size(theta));
grad = b(:)


end
