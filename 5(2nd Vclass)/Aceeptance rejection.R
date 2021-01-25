nsim=10^6
n=10^4
x=c(1:n)/n
f=20*x*(1-x)^3
g=x/x
c=max(f/g)
x=rep(0,nsim)
for (i in 1:nsim){
  while(TRUE){
    u=ceiling(n*runif(1))
    if(runif(1)<f[u]/c/g[u]){
      break
    }
  }
  x[i]=u
}
hist(x)
