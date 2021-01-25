N=10.^9;
x=rand(1,N);
y=rand(1,N);
4*sum(x.^2+y.^2<=1)/N

%%
N=10.^8;
x=rand(1,N);
4*sum(sqrt(1-x.^2))/N

%%
N=10.^1;
h=1/N;
x=linspace(0,1,N);
4*sum(sqrt(1-(x(1:N-2)+x(2:N-1)).^2)*h)