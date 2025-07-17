function [w] = b0_TamGiac(N) 
    n = 0:N-1; 
    w = 1 - abs((n - (N-1)/2)/((N-1)/2)); 
end
