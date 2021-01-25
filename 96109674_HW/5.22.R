nsim = 10^5
u = runif(nsim)
F = function(x){
  return(30*(x^3/3-x^4/2+x^5/5))
}
F_inv = function(y){
  l=0
  u=1
  max_itter = 10^4
  tol = 10^-6
  x = (l+u)/2
  while(abs(F(x)-y)>tol){
    x = (l+u)/2
    if(F(x)<y){
      l=x
    }else{
      u=x
    }
    max_itter = max_itter-1
    if(max_itter<=0){
      print("max_itter_reached")
      break
    }
  }
  return(x)
}
u = runif(nsim)
x = as.numeric(lapply(u, F_inv))
hist(x)