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
    T = Assignment2_NKModel.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(12, 1);
lhs = T(1)*T(2);
rhs = exp(y(13));
residual(1) = lhs - rhs;
lhs = exp(y(12));
rhs = 1/exp(y(4))*T(3)*T(4)*T(5)*T(6);
residual(2) = lhs - rhs;
lhs = exp(y(12))*params(8)-(params(8)-1);
rhs = exp(y(7))*params(2)*(exp(y(7))-1)-T(10);
residual(3) = lhs - rhs;
lhs = 1;
rhs = params(3)*T(8)*T(11);
residual(4) = lhs - rhs;
lhs = exp(y(10));
rhs = exp(y(9))-exp(y(6))*exp(y(14))-T(12);
residual(5) = lhs - rhs;
lhs = exp(y(9));
rhs = T(15);
residual(6) = lhs - rhs;
lhs = exp(y(11))/exp(y(14));
rhs = (1-params(1))/params(1)*y(6)/y(13);
residual(7) = lhs - rhs;
lhs = exp(y(8))/params(26);
rhs = T(16);
residual(8) = lhs - rhs;
lhs = y(5);
rhs = params(15)*y(2)+x(it_, 1);
residual(9) = lhs - rhs;
lhs = y(4);
rhs = params(14)*y(1)+x(it_, 2);
residual(10) = lhs - rhs;
lhs = y(6);
rhs = params(18)*y(3)+x(it_, 3);
residual(11) = lhs - rhs;
lhs = exp(y(15));
rhs = T(11);
residual(12) = lhs - rhs;

end
