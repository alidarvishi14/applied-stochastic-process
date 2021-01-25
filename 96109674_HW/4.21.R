library(matrixStats)
p1 = 0.4
n = 5
nsim =10^4
p = rep(0,n+1)
q=matrix(rep(0,(n+1)*(n)), nrow = n, ncol = n+1)
for (i in 0:n){
  p[i+1] = p1^i*(1-p1)^(n-i)*choose(n,i)
}
plot(p)
for (i in 1:(n)){
  j = min(p[p!=0])
  j = which(p==j)
  q[i,j] = (n)*p[j]
  k = which.max(p)
  q[i,k]=1-q[i,j]
  p = p - q[i,]/(n)
}
u=ceiling((n)*runif(nsim))
up=runif(nsim)
x=rowSums(rowCumsums(q[u,])<up)+1
hist(x,breaks = 0:(n+1),freq = FALSE)
for (i in 0:n){
  p[i+1] = p1^i*(1-p1)^(n-i)*choose(n,i)
}
points(p)
