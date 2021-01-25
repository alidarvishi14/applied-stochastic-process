library(matrixStats)
n=10^1
nsim=10^6
lambda=20
x=log(rowProds(matrix(runif(n*nsim),ncol = n)))/(-lambda)
hist(x)
x=rowSums(log(matrix(runif(n*nsim),ncol = n)))/(-lambda)
hist(x)
