x = linspace(0,10,50);
y = sin(x);
plot(x,y)
axis([0 100 -4 4]);

grid on;

avg = mean(y);
txt = num2str(avg);
text(4,0.5,txt)