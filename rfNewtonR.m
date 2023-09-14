function x = rfNewtonR(fun,x,TolX,itmax)
% Find the root of f(x) = 0 using the Newton-Raphson method% Print the output header.. 
i = 1; %iteration
T = 1; %tollerence 
 fprintf('\n-----Start Newton-Raphson iteration.----------------------------------\n');
    fprintf(' iter       x               f(x)            rerr            aerr\n');
% You will print all these for each iteration.
% Evaluate and print the initial guess.
%[f, fp] = fun(x);  % f = function value, fp = f' (function derivative value)
% Add fprintf statement here.
while i < itmax && T > TolX
   [f, fp] = fun(x);  % f = function value, fp = f' (function derivative value)
    j = x-(f/fp);
    T = abs((j-x)/x);
    fprintf('iter = %d ',i);
    fprintf( 'x = %d ',x);
    fprintf( 'f(x) = %d ',f);
    x = j;
   i = i + 1;
end   
% Add iterations here.  Stop if TolX or itmax is reached.
% Print your results at each iteration.  

% Check for errors.
if i == itmax && T > TolX
    msg = rfNewtonR:IterationLimitExceeded;
    error(msg)
end
fprintf('x = %d',x);
end