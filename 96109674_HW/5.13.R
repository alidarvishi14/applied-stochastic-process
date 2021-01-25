nsim = 10^5
n = 1
# a
F = function(n){
  while(TRUE){
    t = 0
    x = runif(1)
    for(i in 1:n){
      u = runif(1)
      if(u<x){
        t = t+1
      }
    }
    if(t == n){
      break
    }
  }
  return(x)
}
x = as.numeric(lapply(rep(n,nsim),F))
hist(x)               
#b
x = rowMaxs(matrix(runif(n*nsim),nrow = nsim))
hist(x) 
