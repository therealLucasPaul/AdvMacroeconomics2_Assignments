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
    T = Assignment2_NKModel.static_resid_tt(T, y, x, params);
end
residual = zeros(12, 1);
lhs = T(1)*T(2);
rhs = exp(y(10));
residual(1) = lhs - rhs;
lhs = exp(y(9));
rhs = 1/exp(y(1))*T(3)*T(4)*T(5)*T(6);
residual(2) = lhs - rhs;
lhs = exp(y(9))*params(8)-(params(8)-1);
rhs = exp(y(4))*params(2)*(exp(y(4))-1)-exp(y(4))*(exp(y(4))-1)*params(2)*params(3);
residual(3) = lhs - rhs;
lhs = 1;
rhs = params(3)*T(7);
residual(4) = lhs - rhs;
lhs = exp(y(7));
rhs = exp(y(6))-exp(y(3))*exp(y(11))-T(8);
residual(5) = lhs - rhs;
lhs = exp(y(6));
rhs = T(11);
residual(6) = lhs - rhs;
lhs = exp(y(8))/exp(y(11));
rhs = (1-params(1))/params(1)*y(3)/y(10);
residual(7) = lhs - rhs;
lhs = exp(y(5))/params(26);
rhs = T(12);
residual(8) = lhs - rhs;
lhs = y(2);
rhs = y(2)*params(15)+x(1);
residual(9) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(14)+x(2);
residual(10) = lhs - rhs;
lhs = y(3);
rhs = y(3)*params(18)+x(3);
residual(11) = lhs - rhs;
lhs = exp(y(12));
rhs = T(7);
residual(12) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
