nsim = 10^5
F = function(x){
  if(x<=2){
    return (0)
  }else if(x<=3){
    return((x-2)^2/4)
  }else if(x<=6){
    return(x-x^2/12-2)
  }else{
    return(1)
  }
}
F_inv = function(y){
  l=2
  u=10
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
