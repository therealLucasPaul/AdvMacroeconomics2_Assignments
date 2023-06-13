function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = NKmodel_nonlin_NEW.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
lhs = T(1)*T(2);
rhs = exp(y(9));
residual(1) = lhs - rhs;
lhs = exp(y(8));
rhs = exp(y(9))/exp(y(4));
residual(2) = lhs - rhs;
lhs = exp(y(8))*params(7)-(params(7)-1);
rhs = exp(y(1))*params(1)*(exp(y(1))-1)-exp(y(1))*(exp(y(1))-1)*params(1)*params(2);
residual(3) = lhs - rhs;
lhs = 1;
rhs = params(2)*T(3);
residual(4) = lhs - rhs;
lhs = exp(y(6))+T(4);
rhs = exp(y(5));
residual(5) = lhs - rhs;
lhs = exp(y(5));
rhs = exp(y(7))*exp(y(4));
residual(6) = lhs - rhs;
lhs = exp(y(2))/params(24);
rhs = T(5);
residual(7) = lhs - rhs;
lhs = y(3);
rhs = y(3)*params(14)+x(1);
residual(8) = lhs - rhs;
lhs = y(4);
rhs = y(4)*params(13)+x(2);
residual(9) = lhs - rhs;
lhs = exp(y(10));
rhs = T(3);
residual(10) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
