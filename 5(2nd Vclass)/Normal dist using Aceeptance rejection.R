nsim=10^6
x=rep(0,nsim)
for (i in 1:nsim){
  while (TRUE) {
    u=rexp(1)
    if(runif(1)<exp(-(u-1)^2/2)){
      break
    }
  }
  x[i]=u
}
x=x*(2*(runif(nsim)<0.5)-1)
hist(x)
