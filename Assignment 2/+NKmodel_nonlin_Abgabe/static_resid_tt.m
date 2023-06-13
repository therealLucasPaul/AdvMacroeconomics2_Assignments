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

assert(length(T) >= 13);

T(1) = exp(y(7))^params(4);
T(2) = exp(y(6))^params(3);
T(3) = (exp(y(12))/params(8))^params(8);
T(4) = exp(y(9))/(1-params(8));
T(5) = T(4)^(1-params(8));
T(6) = T(3)*T(5);
T(7) = exp(y(2))/exp(y(1));
T(8) = exp(y(5))*params(1)/2*(exp(y(1))-1)^2;
T(9) = (1-params(8))/params(8)*exp(y(12))/exp(y(9));
T(10) = exp(y(4))*exp(y(7))^(1-params(8));
T(11) = exp(y(11))^params(8);
T(12) = T(10)*T(11);
T(13) = exp(y(1))^params(11)*exp(y(3));

end
