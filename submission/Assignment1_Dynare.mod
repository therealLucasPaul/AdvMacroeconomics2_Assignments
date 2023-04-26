// Assignment 2 - Dynare Code
//
// Oberbrinkmann - Unterweger


var c k n y inve en a p;
varexo ea ep;
parameters alfa betta gama delta sigma theta rhoa rhop sigmaa sigmap;

// Parameter values
alfa = 0.3;
betta = 0.99;
sigma = 1;
theta = 3.48;
gama = 0.65;
delta = 0.025;
rhoa = 0.95;
rhop = 0.5;
sigmap = 0.1;
sigmaa = 0.01;


// Steady States
ASS = 1;
PSS = 1;
YSS = 0.432576;
KSS = 3.69713;
NSS = 0.202339;
CSS = 0.318519;
ENSS = 0.0216288; 
ISS = 0.0924281;



// Model Block
model;
    exp(c)^(-sigma)*exp(y) = (theta/gama)*exp(n) + exp(n)*exp(c)^(-sigma)*exp(y); //exp(c)^(-sigma) = (theta/(1-exp(n)))*(1/(exp(a)*(exp(k(-1)))^alfa * gama * exp(n)^(gama-1)*exp(en)^(1-alfa-gama)));
    exp(c)^(-sigma) = betta * exp(c(+1))^(-sigma)*(exp(a(+1))*alfa*exp(k)^(alfa-1)*exp(n(+1))^gama*exp(en(+1))^(1-alfa-gama)+(1-delta));
    exp(p) = exp(a)*exp(k(-1))^(alfa)*exp(n)^(gama)*(1-alfa-gama)*exp(en)^(-alfa-gama);
    exp(a)*exp(k(-1))^alfa*exp(n)^gama*exp(en)^(1-alfa-gama)+(1-delta)*exp(k(-1)) = exp(c) + exp(k) + exp(p)*exp(en);
    exp(inve) = exp(k) - (1-delta)*exp(k(-1));
    exp(y) = exp(a)*exp(k(-1))^alfa*exp(n)^gama*exp(en)^(1-alfa-gama);
    (a)    = rhoa * (a(-1)) + ea;
    (p)    = rhop * (p(-1)) + ep;
end;

initval;
  k    = log(KSS);
  c    = log(CSS);
  a    = log(ASS);
  y    = log(YSS);
  inve = log(ISS);
  en = log(ENSS);
  n = log(NSS);
  p = log(PSS);
end;

shocks;
var ep = sigmap;
var ea = sigmaa;
end;

steady;

stoch_simul(periods=2100,irf=20,order=1) y c k inve n en a p;