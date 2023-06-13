function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 12);

T(1) = exp(y(8))^params(5);
T(2) = exp(y(7))^params(4);
T(3) = (1/(1-params(1)))^(1-params(1));
T(4) = (1/params(1))^params(1);
T(5) = exp(y(10))^(1-params(1));
T(6) = exp(y(3))^params(1);
T(7) = exp(y(5))/exp(y(4));
T(8) = exp(y(6))*params(2)/2*(exp(y(4))-1)^2;
T(9) = exp(y(1))*exp(y(8))^params(1);
T(10) = exp(y(11))^(1-params(1));
T(11) = T(9)*T(10);
T(12) = exp(y(4))^params(12)*exp(y(2));

end
