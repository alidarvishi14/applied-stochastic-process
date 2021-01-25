n = 6
list  = sample(n)
p = c(1:n-(n+1)/2)^2
p = p/sum(p)
nsim = 10^2
msim = 10
U = rep(0,msim)
P = rep(0,msim)
for (i in 1:msim){
  u = runif(1)
  j = sum(cumsum(p[list])<u)+1
  U[i]=u
  P[i]=j
  if(k>1){
    temp = list[k]
    list[k]=list[k-1]
    list[k-1]=temp
  }
}
c = -cov(U,P)/(msim/12)
U = rep(0,nsim)
P = rep(0,nsim)
for(i in 1:nsim){
  u = runif(1)
  j = sum(cumsum(p[list])<u)+1
  print(j)
  k = which(list==j)
  if(k>1){
    temp = list[k]
    list[k]=list[k-1]
    list[k-1]=temp
  }
}
list