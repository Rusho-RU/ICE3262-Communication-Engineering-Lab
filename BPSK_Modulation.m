clc;
close all;
clear;

bitstream = [1 0 1 1 0];
L = length(bitstream);

n = 500;
dt = 1/n;
x = 0:dt:L;

f1 = 3;
phi1 = 0;
y1 = sin(phi1 + 2*pi*f1*x);

f2 = f1;
phi2 = pi;
y2 = sin(phi2 + 2*pi*f2*x);

for i = 0 : L-1
    if(bitstream(i+1)==0)
        for j = 1 : n
            y1(i*n + j) = y2(i*n + j);
        end
    end
end

plot(x, y1, 'r');
axis([0 x(end) -4 4]);

for i=0 : L-1
    txt = num2str(bitstream(i+1));
    text(i+.5, 2, txt);
end

grid on;

xlabel('Time');
ylabel('Voltage');