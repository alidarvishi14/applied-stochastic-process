nsim=10^4
L=1
lambda0=1.001
x=c()
for (i in 1:nsim){
  S=0
  while (TRUE) {
    while (TRUE) {
      s=rexp(1,rate = lambda0)
      p=(S+s+0.001)/lambda0
      if(runif(1)< p){
        S=S+s
        break
      }
    }
    if(S>L){
      break
    }
    x[length(x)+1]=S
    x[length(x)+1]=i
  }
}
x=matrix(x,ncol=2,byrow = TRUE)
hist(x[,1],freq = FALSE)

