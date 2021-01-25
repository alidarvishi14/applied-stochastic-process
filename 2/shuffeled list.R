nsim=10^5;
n=10^2;
x=matrix(0,nsim,n);
for (i in 1:nsim){
  shuffeled_list=c(1:n);
  for (j in 1:(n-1)){
    temp=shuffeled_list[j];
    k=j+floor((n-j)*runif(1))+1;
    shuffeled_list[j]=shuffeled_list[k];
    shuffeled_list[k]=temp;
  }
  x[i,]=shuffeled_list;
}

%%
nsim=10^6;
n=10^2;
x=matrix(0,nsim,n);
for (i in 1:nsim){
  shuffeled_list=sample(n)
  x[i,]=shuffeled_list;
}

%%
  
nsim=10^5;
n=10^2;
x=matrix(0,nsim,n);
for (i in 1:nsim){
  x[i,]=runif(n);
  for (j in 1:n){
    x[i,which.min(x[i,])]=j
  }
}
