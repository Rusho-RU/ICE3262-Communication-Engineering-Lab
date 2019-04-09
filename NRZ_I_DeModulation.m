size = length(y);
len = floor(size/L);
decoded = zeros(1, L);

sign = 1;

for i=0 : L-1
    if(y(i*len+1) ~= sign)
        sign = sign*-1;
        decoded(i+1) = 1;
    end
end

disp(decoded)