function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = NKmodel_nonlin_Abgabe.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(12, 1);
lhs = T(1)*T(2);
rhs = exp(y(12));
residual(1) = lhs - rhs;
lhs = exp(y(11));
rhs = T(6)*1/exp(y(7));
residual(2) = lhs - rhs;
lhs = exp(y(11))*params(7)-(params(7)-1);
rhs = exp(y(4))*params(1)*(exp(y(4))-1)-T(10);
residual(3) = lhs - rhs;
lhs = 1;
rhs = params(2)*T(8)*T(11);
residual(4) = lhs - rhs;
lhs = exp(y(9))+T(12)+exp(y(15))*exp(y(14));
rhs = exp(y(8));
residual(5) = lhs - rhs;
lhs = exp(y(10))/exp(y(14));
rhs = T(13);
residual(6) = lhs - rhs;
lhs = exp(y(8));
rhs = T(16);
residual(7) = lhs - rhs;
lhs = exp(y(5))/params(25);
rhs = T(17);
residual(8) = lhs - rhs;
lhs = y(6);
rhs = params(14)*y(1)+x(it_, 1);
residual(9) = lhs - rhs;
lhs = y(7);
rhs = params(13)*y(2)+x(it_, 2);
residual(10) = lhs - rhs;
lhs = y(15);
rhs = params(15)*y(3)+x(it_, 3);
residual(11) = lhs - rhs;
lhs = exp(y(13));
rhs = T(11);
residual(12) = lhs - rhs;

end
