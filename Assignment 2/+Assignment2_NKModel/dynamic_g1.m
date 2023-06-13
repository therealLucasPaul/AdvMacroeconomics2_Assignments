function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = Assignment2_NKModel.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(12, 21);
g1(1,10)=T(1)*exp(y(10))*getPowerDeriv(exp(y(10)),params(4),1);
g1(1,11)=T(2)*exp(y(11))*getPowerDeriv(exp(y(11)),params(5),1);
g1(1,13)=(-exp(y(13)));
g1(2,4)=(-(T(6)*T(5)*T(4)*T(3)*(-exp(y(4)))/(exp(y(4))*exp(y(4)))));
g1(2,6)=(-(1/exp(y(4))*T(3)*T(4)*T(5)*exp(y(6))*getPowerDeriv(exp(y(6)),params(1),1)));
g1(2,12)=exp(y(12));
g1(2,13)=(-(T(6)*1/exp(y(4))*T(3)*T(4)*exp(y(13))*getPowerDeriv(exp(y(13)),1-params(1),1)));
g1(3,7)=(-(exp(y(7))*params(2)*(exp(y(7))-1)+exp(y(7))*params(2)*exp(y(7))));
g1(3,16)=T(9)*(exp(y(16))*params(2)*params(3)*T(8)*(exp(y(16))-1)+exp(y(16))*params(2)*params(3)*T(8)*exp(y(16)));
g1(3,9)=exp(y(16))*params(2)*params(3)*T(8)*(exp(y(16))-1)*(-(exp(y(17))*exp(y(9))))/(exp(y(9))*exp(y(9)));
g1(3,17)=T(10);
g1(3,10)=T(9)*exp(y(16))*(exp(y(16))-1)*params(2)*params(3)*T(19);
g1(3,18)=T(9)*exp(y(16))*(exp(y(16))-1)*params(2)*params(3)*T(7)*T(18);
g1(3,12)=exp(y(12))*params(8);
g1(4,16)=(-(params(3)*T(8)*T(17)));
g1(4,8)=(-(params(3)*T(8)*T(11)));
g1(4,10)=(-(T(11)*params(3)*T(19)));
g1(4,18)=(-(T(11)*params(3)*T(7)*T(18)));
g1(5,6)=exp(y(6))*exp(y(14));
g1(5,7)=exp(y(9))*params(2)/2*exp(y(7))*2*(exp(y(7))-1);
g1(5,9)=(-(exp(y(9))-T(12)));
g1(5,10)=exp(y(10));
g1(5,14)=exp(y(6))*exp(y(14));
g1(6,4)=(-T(15));
g1(6,9)=exp(y(9));
g1(6,11)=(-(T(14)*exp(y(4))*exp(y(11))*getPowerDeriv(exp(y(11)),params(1),1)));
g1(6,14)=(-(T(13)*exp(y(14))*getPowerDeriv(exp(y(14)),1-params(1),1)));
g1(7,6)=(-((1-params(1))/params(1)*1/y(13)));
g1(7,11)=exp(y(11))/exp(y(14));
g1(7,13)=(-((1-params(1))/params(1)*(-y(6))/(y(13)*y(13))));
g1(7,14)=(-(exp(y(11))*exp(y(14))))/(exp(y(14))*exp(y(14)));
g1(8,5)=(-T(16));
g1(8,7)=(-(exp(y(5))*exp(y(7))*getPowerDeriv(exp(y(7)),params(12),1)));
g1(8,8)=exp(y(8))/params(26);
g1(9,2)=(-params(15));
g1(9,5)=1;
g1(9,19)=(-1);
g1(10,1)=(-params(14));
g1(10,4)=1;
g1(10,20)=(-1);
g1(11,3)=(-params(18));
g1(11,6)=1;
g1(11,21)=(-1);
g1(12,16)=(-T(17));
g1(12,8)=(-T(11));
g1(12,15)=exp(y(15));

end
