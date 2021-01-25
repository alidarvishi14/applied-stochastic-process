n = 6
list  = sample(n)
p = c(1:n-(n+1)/2)^4
p = p/sum(p)
nsim = 10^4
P=0
for(i in 1:nsim){
  u = runif(1)
  j = sum(cumsum(p)<u)+1
  k = which(list==j)
  P = P + k
  if(k>1){
    temp = list[k]
    list[k]=list[k-1]
    list[k-1]=temp
  }
}
P/nsim