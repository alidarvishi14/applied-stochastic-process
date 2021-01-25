nsim=10^4;
n=10^2;
x=zeros(nsim,n);
for i=1:nsim
    x(i,:)=shuffeled_list(n);
end

%%
nsim=10^2;
n=10^1;
x=zeros(nsim,n);
for i=1:nsim
    x(i,:)=rand(n,1);
    [~,x(i,:)]=sort(x(i,:));
end