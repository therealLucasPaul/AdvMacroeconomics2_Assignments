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
    T = NKmodel_loglin.static_g1_tt(T, y, x, params);
end
g1 = zeros(16, 16);
g1(1,2)=(-(1/params(2)));
g1(1,3)=1/params(2);
g1(2,1)=(-params(9));
g1(2,2)=1-params(1);
g1(3,1)=(-params(11));
g1(3,2)=(-params(10));
g1(3,3)=1;
g1(3,4)=(-1);
g1(4,4)=1-params(13);
g1(5,5)=1-params(12);
g1(6,6)=(-params(2));
g1(6,7)=(-params(3));
g1(6,9)=1;
g1(7,3)=params(4);
g1(7,6)=(-1);
g1(7,8)=1;
g1(8,5)=(-1);
g1(8,6)=1;
g1(8,7)=(-(1-params(7)));
g1(9,5)=(-((1+params(3))/(params(7)+params(3)+params(2)*(1-params(7)))));
g1(9,10)=1;
g1(10,1)=(-1);
g1(10,6)=1;
g1(10,10)=(-1);
g1(11,2)=(-1);
g1(11,12)=1;
g1(12,2)=1;
g1(12,3)=(-1);
g1(12,11)=1;
g1(13,6)=(-1);
g1(13,7)=1;
g1(13,13)=1;
g1(14,3)=(-4);
g1(14,14)=1;
g1(15,11)=(-4);
g1(15,15)=1;
g1(16,2)=(-4);
g1(16,16)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
