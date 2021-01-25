n = 6
nsim1 = 10^2
nsim2 = 10^2
N = 100
list = sample(n)
p = (1:n)^3
p = p /sum(p)
U = rep(0,nsim1)
P = rep(0,nsim1)
for (i in 1:nsim1){
  for (j in 1:N){
    u = runif(1)
    k = sum(u>cumsum(p[list]))+1
    if(k>1){
      temp = list[k]
      list[k] = list[k-1]
      list[k-1] = temp
    }
    U[i] = U[i]+u
    P[i]= P[i] + p[k]
  }
}
c = -cov(U,P)/(N/12)
print(c)
u = runif(nsim2)
U = rep(0,nsim2)
P = rep(0,nsim2)
for (i in 1:nsim2){
  for (j in 1:N){
    u = runif(1)
    k = sum(u>cumsum(p[list]))+1
    if(k>1){
      temp = list[k]
      list[k] = list[k-1]
      list[k-1] = temp
    }
    U[i] = U[i]+u
    P[i]= P[i] + p[k]
  }
}
print(mean(P)+c*(mean(U)-N/2))
print(sd(P))
print(sd(P+c*U))
