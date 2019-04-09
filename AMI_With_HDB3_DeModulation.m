size = length(y);
len = floor(size/L);
decoded = zeros(1, L);

sign = -1;
i = 0;

while(i<L)
    if(y(i*len+1)==0)
        
    elseif(y(i*len+1)==sign)
        decoded(i+1) = 0;
        decoded(i-2) = 0;
    else
        decoded(i+1) = 1;
        sign = sign*-1;
    end
    
    i = i+1;
end

disp(decoded);