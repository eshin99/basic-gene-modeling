%modeling FFL (x,y,z)

N = 100; %total number of data points
Ngraph  = linspace(0,N);

x = zeros(1,N);
y = zeros(1,N);
z = zeros(1,N);

%variables
X = 10;
pxy = 1;
pxz = 1;
pyz = 0.1;
py = 0.6;
pz = 0.6;
x(1)= X;

for n = 2:N
    
    x(n) = X;
    y(n) = pxy*x(n-1) + py*y(n-1);
    z(n) = pxz*x(n-1) + pyz*z(n-1) + pz*z(n-1);
end

figure
plot(Ngraph,x,Ngraph,y,Ngraph,z)
title('FFL')
xlabel('time')
ylabel('concentration')
legend('x concentration','y concentration','z concentration')