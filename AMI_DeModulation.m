size = length(y);
len = floor(size/L);
decoded = zeros(1, L);

for i=0 : L-1
    if(y(i*len+1))
        decoded(i+1) = 1;
    end
end

disp(decoded);