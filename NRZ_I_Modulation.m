clc;
close all;
clear;

bitstream = [0 1 0 0 1 1 0 0 0 1 1];
L = length(bitstream);

n = 500;
dt = 1/n;
x = 0:dt:L;

y = ones(1, length(x));

sign = 1;

for i=0 : L-1
    if(bitstream(i+1)==1)
        sign = sign*-1;
    end
    
    y((i*n+1) : (i+1)*n) = sign;
end

plot(x, y, 'r');
axis([0 x(end) -4 4]);
grid on;

xlabel('Time');
ylabel('Voltage');