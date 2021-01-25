lambda=10
L=100
nsim=10^4
x=c()
for (i in 1:nsim){
  S=0
  while (TRUE) {
    S=S+rexp(1,rate = lambda)
    if(S>L){
      break
    }
    x[length(x)+1]=S
    x[length(x)+1]=i
  }
}
x=matrix(x,ncol=2,byrow = TRUE)
hist(x[,1])

## next method

lambda=10
L=100
nsim=10^4
x=c()
for (i in 1:nsim){
  n=rpois(1,lambda = lambda*L)
  newpoints=runif(n,min=0,max=L)
  x[1:n+length(x)+1]=newpoints
}
hist(x)
