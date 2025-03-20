model lab03
Real y11(start=22222);
Real y21(start=11111);

parameter Real a=0.22;
parameter Real b=0.77;
parameter Real c=0.66;
parameter Real h=0.11;

Real y12(start=22222);
Real y22(start=11111);

parameter Real a2=0.31;
parameter Real b2=0.79;
parameter Real c2=0.59;
parameter Real h2=0.21;

equation
  der(y11) = -a*y11 - b*y21 + sin(0.5*time)+2;
  der(y21) = -c*y11 - h*y21 + cos(0.5*time)+2;
  
 equation
  der(y12) = -a2*y12 - b2*y22 + sin(2.5*time)+1;
  der(y22) = -c2*y12*y22 - h2*y22 + cos(2*time)+2;

end lab03;
