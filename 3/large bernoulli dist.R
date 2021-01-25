p=0.001
n=10^4
nsim=10^5
x=data.frame(which(matrix(runif(n=n*nsim),ncol = nsim,nrow = n)<p,arr.ind = TRUE))
