p=c(0.06,0.06,0.06,0.06,0.06,0.15,0.13,0.14,0.15,0.13)
nsim = 10^6
p1 = c(0.6,0.35,0.03,0.02)
P1 = cumsum(p1)
X = rep(0,nsim)
for (i in 1:nsim){
  u = runif(1)
  if(u<=P1[1]){
    x = ceiling(10*runif(1))
  }else if(u<=P1[2]){
    x = 5+ceiling(5*runif(1))
  }else if(u<=P1[3]){
    x = c(6,8,9)[ceiling(3*runif(1))]
  }else{
    x = c(6,9)[ceiling(2*runif(1))]
  }
  X[i]=x
}
hist(X,freq = FALSE,breaks =0:10)
