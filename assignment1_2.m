%DFT calculations
%assignment 1
%2.2

x = [4,7,3,6];
N = 4;
M = N-1;

w = zeros(N,1);
X = zeros(N,1);

%finding w(m)
for n = 1:N
    w(n) = (2*pi/N)*(n-1);
end


%calculating x(w(m))
for m = 1:N
    xn = 0;
  for n = 1:N
      xn = xn +  x(n)*exp(-1i*w(m)*(n-1))
      xn
  end
  X(m) = xn;
end

%graph it
figure
plot(w,abs(X))
title('DFT Assignment #1 (2.2)')
xlabel('w(m)')
ylabel('X(w(m))')