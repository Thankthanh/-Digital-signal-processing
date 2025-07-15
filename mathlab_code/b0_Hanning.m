function [w] = b0_Hanning(N) 
    n = 0:N-1; 
    w = 0.5 - 0.5*cos(2*pi*n/(N-1)); 
end
