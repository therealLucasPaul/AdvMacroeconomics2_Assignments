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
    T = NKmodel_loglin.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(16, 24);
g1(1,4)=1;
g1(1,20)=(-1);
g1(1,21)=(-T(1));
g1(1,6)=T(1);
g1(1,8)=T(1)*T(2);
g1(1,22)=T(1)*(-T(2));
g1(2,4)=(-params(9));
g1(2,5)=1;
g1(2,21)=(-params(1));
g1(3,4)=(-params(11));
g1(3,5)=(-params(10));
g1(3,6)=1;
g1(3,7)=(-1);
g1(4,1)=(-params(13));
g1(4,7)=1;
g1(4,23)=(-1);
g1(5,2)=(-params(12));
g1(5,8)=1;
g1(5,24)=(-1);
g1(6,9)=(-params(2));
g1(6,10)=(-params(3));
g1(6,12)=1;
g1(7,6)=params(4);
g1(7,9)=(-1);
g1(7,11)=1;
g1(8,8)=(-1);
g1(8,9)=1;
g1(8,10)=(-(1-params(7)));
g1(9,8)=(-((1+params(3))/(params(7)+params(3)+params(2)*(1-params(7)))));
g1(9,13)=1;
g1(10,4)=(-1);
g1(10,9)=1;
g1(10,13)=(-1);
g1(11,5)=(-1);
g1(11,3)=1;
g1(11,11)=(-1);
g1(11,15)=1;
g1(12,21)=1;
g1(12,6)=(-1);
g1(12,14)=1;
g1(13,9)=(-1);
g1(13,10)=1;
g1(13,16)=1;
g1(14,6)=(-4);
g1(14,17)=1;
g1(15,14)=(-4);
g1(15,18)=1;
g1(16,5)=(-4);
g1(16,19)=1;

end
