function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = NKmodel_nonlin_NEW.static_g1_tt(T, y, x, params);
end
g1 = zeros(10, 10);
g1(1,6)=T(1)*exp(y(6))*getPowerDeriv(exp(y(6)),params(3),1);
g1(1,7)=T(2)*exp(y(7))*getPowerDeriv(exp(y(7)),params(4),1);
g1(1,9)=(-exp(y(9)));
g1(2,4)=(-((-(exp(y(9))*exp(y(4))))/(exp(y(4))*exp(y(4)))));
g1(2,8)=exp(y(8));
g1(2,9)=(-(exp(y(9))/exp(y(4))));
g1(3,1)=(-(exp(y(1))*params(1)*(exp(y(1))-1)+exp(y(1))*exp(y(1))*params(1)-(exp(y(1))*(exp(y(1))-1)*params(1)*params(2)+exp(y(1))*exp(y(1))*params(1)*params(2))));
g1(3,8)=exp(y(8))*params(7);
g1(4,1)=(-(params(2)*T(6)));
g1(4,2)=(-(params(2)*T(3)));
g1(5,1)=exp(y(5))*params(1)/2*exp(y(1))*2*(exp(y(1))-1);
g1(5,5)=T(4)-exp(y(5));
g1(5,6)=exp(y(6));
g1(6,4)=(-(exp(y(7))*exp(y(4))));
g1(6,5)=exp(y(5));
g1(6,7)=(-(exp(y(7))*exp(y(4))));
g1(7,1)=(-(exp(y(3))*exp(y(1))*getPowerDeriv(exp(y(1)),params(11),1)));
g1(7,2)=exp(y(2))/params(24);
g1(7,3)=(-T(5));
g1(8,3)=1-params(14);
g1(9,4)=1-params(13);
g1(10,1)=(-T(6));
g1(10,2)=(-T(3));
g1(10,10)=exp(y(10));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
