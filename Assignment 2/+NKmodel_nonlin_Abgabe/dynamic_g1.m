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
    T = NKmodel_nonlin_Abgabe.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(12, 21);
g1(1,9)=T(1)*exp(y(9))*getPowerDeriv(exp(y(9)),params(3),1);
g1(1,10)=T(2)*exp(y(10))*getPowerDeriv(exp(y(10)),params(4),1);
g1(1,12)=(-exp(y(12)));
g1(2,7)=(-(T(6)*(-exp(y(7)))/(exp(y(7))*exp(y(7)))));
g1(2,11)=exp(y(11));
g1(2,12)=(-(1/exp(y(7))*T(3)*T(4)*getPowerDeriv(T(4),1-params(8),1)));
g1(2,15)=(-(1/exp(y(7))*T(5)*exp(y(15))/params(8)*getPowerDeriv(exp(y(15))/params(8),params(8),1)));
g1(3,4)=(-(exp(y(4))*params(1)*(exp(y(4))-1)+exp(y(4))*params(1)*exp(y(4))));
g1(3,16)=T(9)*(exp(y(16))*params(1)*params(2)*T(8)*(exp(y(16))-1)+exp(y(16))*params(1)*params(2)*T(8)*exp(y(16)));
g1(3,8)=exp(y(16))*params(1)*params(2)*T(8)*(exp(y(16))-1)*(-(exp(y(17))*exp(y(8))))/(exp(y(8))*exp(y(8)));
g1(3,17)=T(10);
g1(3,9)=T(9)*exp(y(16))*(exp(y(16))-1)*params(1)*params(2)*T(20);
g1(3,18)=T(9)*exp(y(16))*(exp(y(16))-1)*params(1)*params(2)*T(7)*T(19);
g1(3,11)=exp(y(11))*params(7);
g1(4,16)=(-(params(2)*T(8)*T(18)));
g1(4,5)=(-(params(2)*T(8)*T(11)));
g1(4,9)=(-(T(11)*params(2)*T(20)));
g1(4,18)=(-(T(11)*params(2)*T(7)*T(19)));
g1(5,4)=exp(y(8))*params(1)/2*exp(y(4))*2*(exp(y(4))-1);
g1(5,8)=T(12)-exp(y(8));
g1(5,9)=exp(y(9));
g1(5,14)=exp(y(15))*exp(y(14));
g1(5,15)=exp(y(15))*exp(y(14));
g1(6,10)=exp(y(10))/exp(y(14));
g1(6,12)=(-((1-params(8))/params(8)*(-(exp(y(12))*exp(y(15))))/(exp(y(12))*exp(y(12)))));
g1(6,14)=(-(exp(y(10))*exp(y(14))))/(exp(y(14))*exp(y(14)));
g1(6,15)=(-T(13));
g1(7,7)=(-T(16));
g1(7,8)=exp(y(8));
g1(7,10)=(-(T(15)*exp(y(7))*exp(y(10))*getPowerDeriv(exp(y(10)),1-params(8),1)));
g1(7,14)=(-(T(14)*exp(y(14))*getPowerDeriv(exp(y(14)),params(8),1)));
g1(8,4)=(-(exp(y(6))*exp(y(4))*getPowerDeriv(exp(y(4)),params(11),1)));
g1(8,5)=exp(y(5))/params(25);
g1(8,6)=(-T(17));
g1(9,1)=(-params(14));
g1(9,6)=1;
g1(9,19)=(-1);
g1(10,2)=(-params(13));
g1(10,7)=1;
g1(10,20)=(-1);
g1(11,3)=(-params(15));
g1(11,15)=1;
g1(11,21)=(-1);
g1(12,16)=(-T(18));
g1(12,5)=(-T(11));
g1(12,13)=exp(y(13));

end
