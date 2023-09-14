fun = @test;
x = 1;
TolX = 1e-6;
itmax = 2;
x = rfNewtonR(fun,x,TolX,itmax)

% Test function.
function [f, fp] = test(x)
    f = x.^2 - 2;
    fp = 2*x;
end