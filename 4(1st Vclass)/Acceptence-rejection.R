nsim=10^5
n=5
px=c(0.21,0.22,0.19,0.18,0.2)
c=max(n*px)
x=rep(0,nsim)

for (i in 1:nsim){
  while(TRUE){
    u=runif(1)
    y=ceiling(n*u)
    if (n*u-floor(n*u)<px[y]/c*n){
      break
    }
  }
  x[i]=y
}
hist(x,freq = FALSE,breaks = c(0:5))