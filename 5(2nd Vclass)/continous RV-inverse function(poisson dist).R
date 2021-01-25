nsim=10^5
lambda=40
x=rep(0,nsim)
for (i in 1:nsim){
  U=runif(1)
  j=0
  while (U>exp(-lambda)) {
    U=U*runif(1)
    j=j+1
  }
  x[i]=j
}
hist(x)