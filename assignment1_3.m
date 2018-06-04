%calling in data 
fileID = fopen('data.txt','r');
formatSpec = '%d %f';
sizeA = [1 Inf];

A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);


%set up variables
N = length(A);
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
      xn = xn +  A(n)*exp(-1i*w(m)*(n-1));
  end
  X(m) = xn;
end

%graph it
figure
plot(w,abs(X))
title('DFT Assignment #1 (3)')
xlabel('w(m)')
ylabel('X(w(m))')