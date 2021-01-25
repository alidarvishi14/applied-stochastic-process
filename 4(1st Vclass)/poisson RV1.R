nsim=10^7
lambda=15
rand=runif(nsim)
poisson=rep(0,nsim)
for (i in 1:nsim){
  k=0
  p=exp(-lambda)
  P=p
  while(P<rand[i]){
    k=k+1
    p=p*lambda/(k)
    P=P+p
  }
  poisson[i]=k
}
hist(poisson)
mean(poisson)
sd(poisson)^2
