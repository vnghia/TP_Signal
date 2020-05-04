clc
global T_0 = 5;
global T_e = 1;
global M = 10;
global A = 10;

function sortie = s(temp)
  global T_0;
  global A;
  t = mod(temp, T_0);
  if 0 <= t & t <= T_0/2
    sortie = A;
  elseif T_0/2 < t & t < T_0
    sortie = 0;
  end
end

temps = T_e * (0 : 1 : M - 1)
signal = arrayfun(@(x) s(x), temps)
plot(temps, signal, 'r*')
grid;
xlabel('temps');
ylabel('signal');