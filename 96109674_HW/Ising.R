J = -1
n = 6
beta = 10
nsim = 10^2
grid = matrix(rep(-1,n^2),ncol = n ,nrow = n)
for (i in 1:nsim){
  loc = ceiling(n*runif(2))
  neighbors = 
    rbind(grid[2:n,],rep(0,n))+
    rbind(rep(0,n),grid[1:(n-1),])+
    cbind(grid[,2:n],rep(0,n))+
    cbind(rep(0,n),grid[,1:(n-1)])
  pow = neighbors[loc[1],loc[2]]
  if (runif(1)<=exp(2*beta*J*pow)/(1+exp(2*beta*J*pow))){
    grid[loc[1],loc[2]]=1
  }else{
    grid[loc[1],loc[2]]=-1
  }
}
grid