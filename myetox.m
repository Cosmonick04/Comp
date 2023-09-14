function [Sumvalue] = myetox(x)

    %set up series with the first term
    result = 1; 
    Sumvalue = result;

    %loop counter (number of iterations)
    n=1;

    %parameters
    eps = 0.00001; % convergence tolerance (epsilon)

    %while loop: test for convergence and iterations
    while (abs(result) > eps) && (n <= 100)
        
        result = x^n / factorial(n);
        Sumvalue = result + Sumvalue;
        n = n + 1;

    end

end