function y = myquad(a,b,c)
    % Insert your function code here.
 
    s = sqrt(b^2 - 4*a*c);
    x1 =(-b+s)/(2*a);
    x2 =(-b-s)/(2*a);

y=[x1 x2];

end