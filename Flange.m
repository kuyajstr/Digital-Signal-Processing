function [ y ] = Flange( x, fs)
x = x(:,1);
delay = 15;
range = 12; % amplitude of change 
sweep_freq = 0.3125; % provide a distinguishable sweep

for i = 1:length(x) - delay - range
    y(i) = x(i) + x(i+delay+round(range*sin(2*pi*i*sweep_freq/fs)));
end

end

