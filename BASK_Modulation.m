clc;
close all;
clear;

bitstream = [1 0 1 1 0 1 0 1 1 0];
L = length(bitstream);

n = 500;
dt = 1/n;
x = 0:dt:L;

f = 4;
phi = 0;

y = sin(2*pi*f*x + phi);

for i = 0 : L-1
    if(bitstream(i+1)==0)
        y((i*n+1) : (i+1)*n) = 0;
    end
end

plot(x, y, 'r');
axis([0 x(end) -4 4]);

for i=0 : L-1
    txt = num2str(bitstream(i+1));
    text(i+.5, 2, txt);
end

grid on;

xlabel('Time')
ylabel('Voltage');
