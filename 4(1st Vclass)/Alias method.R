library(matrixStats)
p=matrix(c(7/16,1/4,1/8,3/16,1,2,3,4),nrow = 2,byrow = TRUE)
nsim=10^6
n=length(p)/2
q=matrix(rep(0,4*(n-1)), nrow = n-1, ncol = 4)
for (i in 1:(n-1)){
  j=which.min(p[1,p[1,]!=0])
  j=p[,p[1,]!=0][2,j]
  q[i,j]=(n-1)*p[1,j]
  p[1,j]=p[1,j]-q[i,j]/(n-1)
  k=which.max(p[1,])
  q[i,k]=1-q[i,j]
  p[1,k]=p[1,k]-q[i,k]/(n-1)
}

u=ceiling((n-1)*runif(nsim))
up=runif(nsim)
x=rowSums(rowCumsums(q[u,])<up)+1
hist(x)
