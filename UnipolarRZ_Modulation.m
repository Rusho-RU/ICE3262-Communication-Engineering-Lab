clc;
close all;

bitstream = [1 0 0 0 1 1 0 0];
L = length(bitstream);

n = 500;
N = n*L;
dt = L/N;
x = 0:dt:L;
y = zeros(1, length(x));

for i = 0 : L-1
    if(bitstream(i+1)==1)
        y((i*n+1) : (i+1)*n) = 1;
    else
        y((i*n+1) : (i+1)*n) = 0;
    end
end

plot(x,y, 'r');
axis([0 x(end) -2 2]);
grid on;

xlabel('Time')
ylabel('Voltage');
