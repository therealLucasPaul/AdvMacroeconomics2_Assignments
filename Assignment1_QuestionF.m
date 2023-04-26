% Assignment 2 - Matrix Solution
%
% Oberbrinkmann - Unterweger

% We start by clearing the environment
format compact;
clc; clear all; close all;

% The given parameters values are:
% Parameter values
alfa = 0.3;
betta = 0.99;
sigma = 1;
theta = 3.48;
gama = 0.65;
delta = 0.025;
rhoa = 0.95;
rhop = 0.5;
sigmap = 0.00001;
sigmaa = 0.0007;
ASS = 1;
PSS = 1;


% Steady States
YSS = 0.432576;
KSS = 3.69713;
NSS = 0.202339;
CSS = 0.318519;
ENSS = 0.0216288; 
ISS = 0.0924281;

% We need to bring our log-linearized model into matrix form
% First we construct the empty matrices A and B with the
% dimensions 8x8 as we are dealing with 8 variables:
A  = zeros(8,8); 
B  = zeros(8,8);

% We also define the column indices for the variables
ik = 1; % column index for capital     
ia = 2; % column index for productivity 
ip = 3; % column index for energy prices
iinve = 4; % column index for investment      
iy = 5; % column index for output
ic = 6; % column index for consumption  
in = 7; % column index for hours worked
ien = 8; % column index for energy consumption


% equation 1: CHECK
B(1,iy) = -YSS+NSS*YSS;
B(1,ic) = (theta/gama)*CSS*NSS;
B(1,in) = (theta/gama)*CSS*NSS + NSS*YSS;

% equation 2: CHECK
A(2,ik) = (1-betta*(1-delta))*(alfa-1);
A(2,ia) = (1-betta*(1-delta));
A(2,ic) = -sigma;
A(2,in) = (1-betta*(1-delta))*gama;
A(2,ien) = (1-betta*(1-delta))*(1-alfa-gama);
B(2,ic) = -sigma;

% equation 3: CHECK
B(3,iy) = -YSS*(1-alfa-gama);
B(3,ip) = PSS*ENSS;
B(3,ien) = PSS*ENSS;

% equation 4: CHECK
A(4,ik) = KSS/YSS;
B(4,ik) = alfa+(1-delta)*(KSS/YSS);
B(4,ia) = 1; 
B(4,ic) = -CSS/YSS;
B(4,ip) = -(PSS*ENSS)/YSS;
B(4,in) = gama;
B(4,ien)= -((PSS*ENSS)/YSS) + 1 - alfa - gama;

% equation 5: CHECK

A(5,ik) = KSS;
B(5,ik) = (1-delta)*KSS;
B(5,iinve) = ISS;

% equation 6: CHECK
B(6,ik) = -alfa;
B(6,ia) = -1;
B(6,iy) = 1;
B(6,in) = -gama;
B(6,ien) = -(1 - alfa - gama);

% equation 7:CHECK
A(7,ia) = 1;
B(7,ia) = rhoa;

% equation 8: CHECK
A(8,ip) = 1;
B(8,ip) = rhop;


% Use solab.m
[G,H]=solab(A,B,3)
