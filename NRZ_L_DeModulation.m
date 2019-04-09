size = length(y);
len = floor(size/L);
decoded = ones(1, L);

for i=0 : L-1
    for j=1 : len-1
        if(y(i*len + j) < 0)
            decoded(i+1) = 0;
        end
    end
end

disp(decoded);