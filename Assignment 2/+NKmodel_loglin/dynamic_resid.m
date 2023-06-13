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
    T = NKmodel_loglin.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(16, 1);
lhs = y(4);
rhs = y(20)-T(1)*(y(6)-y(21)-T(2)*(y(22)-y(8)));
residual(1) = lhs - rhs;
lhs = y(5);
rhs = y(21)*params(1)+y(4)*params(9);
residual(2) = lhs - rhs;
lhs = y(6);
rhs = y(5)*params(10)+y(4)*params(11)+y(7);
residual(3) = lhs - rhs;
lhs = y(7);
rhs = params(13)*y(1)+x(it_, 1);
residual(4) = lhs - rhs;
lhs = y(8);
rhs = params(12)*y(2)+x(it_, 2);
residual(5) = lhs - rhs;
lhs = y(12);
rhs = params(2)*y(9)+params(3)*y(10);
residual(6) = lhs - rhs;
lhs = y(11);
rhs = y(9)-y(6)*params(4);
residual(7) = lhs - rhs;
lhs = y(9);
rhs = y(8)+(1-params(7))*y(10);
residual(8) = lhs - rhs;
lhs = y(13);
rhs = y(8)*(1+params(3))/(params(7)+params(3)+params(2)*(1-params(7)));
residual(9) = lhs - rhs;
lhs = y(9);
rhs = y(4)+y(13);
residual(10) = lhs - rhs;
lhs = y(15);
rhs = y(5)+y(11)-y(3);
residual(11) = lhs - rhs;
lhs = y(14);
rhs = y(6)-y(21);
residual(12) = lhs - rhs;
lhs = y(16);
rhs = y(9)-y(10);
residual(13) = lhs - rhs;
lhs = y(17);
rhs = y(6)*4;
residual(14) = lhs - rhs;
lhs = y(18);
rhs = y(14)*4;
residual(15) = lhs - rhs;
lhs = y(19);
rhs = y(5)*4;
residual(16) = lhs - rhs;

end
