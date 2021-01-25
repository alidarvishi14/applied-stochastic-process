N=10^4;
x=zeros(1,N);
for i = 1:N
    x(i)=my_random();
end
hist(x)
%%

N=10^6;
x=zeros(1,N);
for i = 1:N
    x(i)=uniform_from_1_to_n(1000);
end
hist(x)
    

