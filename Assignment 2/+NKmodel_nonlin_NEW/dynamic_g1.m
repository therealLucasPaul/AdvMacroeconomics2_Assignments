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
    T = NKmodel_nonlin_NEW.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(10, 17);
g1(1,8)=T(1)*exp(y(8))*getPowerDeriv(exp(y(8)),params(3),1);
g1(1,9)=T(2)*exp(y(9))*getPowerDeriv(exp(y(9)),params(4),1);
g1(1,11)=(-exp(y(11)));
g1(2,6)=(-((-(exp(y(11))*exp(y(6))))/(exp(y(6))*exp(y(6)))));
g1(2,10)=exp(y(10));
g1(2,11)=(-(exp(y(11))/exp(y(6))));
g1(3,3)=(-(exp(y(3))*params(1)*(exp(y(3))-1)+exp(y(3))*params(1)*exp(y(3))));
g1(3,13)=T(5)*(exp(y(13))*params(1)*params(2)*T(4)*(exp(y(13))-1)+exp(y(13))*params(1)*params(2)*T(4)*exp(y(13)));
g1(3,7)=exp(y(13))*params(1)*params(2)*T(4)*(exp(y(13))-1)*(-(exp(y(14))*exp(y(7))))/(exp(y(7))*exp(y(7)));
g1(3,14)=T(6);
g1(3,8)=T(5)*exp(y(13))*(exp(y(13))-1)*params(1)*params(2)*T(12);
g1(3,15)=T(5)*exp(y(13))*(exp(y(13))-1)*params(1)*params(2)*T(3)*T(11);
g1(3,10)=exp(y(10))*params(7);
g1(4,13)=(-(params(2)*T(4)*T(10)));
g1(4,4)=(-(params(2)*T(4)*T(7)));
g1(4,8)=(-(T(7)*params(2)*T(12)));
g1(4,15)=(-(T(7)*params(2)*T(3)*T(11)));
g1(5,3)=exp(y(7))*params(1)/2*exp(y(3))*2*(exp(y(3))-1);
g1(5,7)=T(8)-exp(y(7));
g1(5,8)=exp(y(8));
g1(6,6)=(-(exp(y(9))*exp(y(6))));
g1(6,7)=exp(y(7));
g1(6,9)=(-(exp(y(9))*exp(y(6))));
g1(7,3)=(-(exp(y(5))*exp(y(3))*getPowerDeriv(exp(y(3)),params(11),1)));
g1(7,4)=exp(y(4))/params(24);
g1(7,5)=(-T(9));
g1(8,1)=(-params(14));
g1(8,5)=1;
g1(8,16)=(-1);
g1(9,2)=(-params(13));
g1(9,6)=1;
g1(9,17)=(-1);
g1(10,13)=(-T(10));
g1(10,4)=(-T(7));
g1(10,12)=exp(y(12));

end
