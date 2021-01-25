nsim=10^4
lambda=40
N=floor(lambda)
p=exp(-lambda)
S_N=p
for (i in 1:N){
  p=p*lambda/i
  S_N=S_N+p
}
rand=runif(nsim)
poisson=rep(0,nsim)
for (i in 1:nsim){
  P=S_N
  pp=p
  k=N
  if(S_N<rand[i]){
    while (P<rand[i]) {
      k=k+1
      pp=pp*lambda/k
      P=P+pp
    }
  } else {
    while (rand[i]<P) {
      P=P-pp
      pp=pp*k/lambda
      k=k-1
    }
    k=k+1
  }
  poisson[i]=k
}
hist(poisson)
mean(poisson)
sd(poisson)^2