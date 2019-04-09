clc;
close all;
clear

bitstream = [1 0 0 0 1 1 0 0];
L = length(bitstream);

n = 500;
dt = 1/n;
x = 0:dt:L;
y = ones(1, length(x));

for i = 0 : L-1
    if(bitstream(i+1)==0)
        y((i*n+1) : (i+1)*n ) = -1;
    end
end

plot(x,y, 'r');
axis([0 x(end) -4 4]);
grid on;

xlabel('Time')
ylabel('Voltage');
