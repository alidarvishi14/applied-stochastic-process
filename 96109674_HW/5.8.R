nsim = 10^6
u = runif(nsim)
#a
F_inv= function(u){
  if(u<=1/3){
    return(3*u)
  }else if(u<=2/3){
    return((3*u-1)^(1/3))
  }else{
    return((3*u-2)^(1/5))
  }
}
x = as.numeric(lapply(u, F_inv))
hist(x,freq = FALSE)
#b
F_inv= function(u){
  if(u<=1/3){
    return(-1/2*log(3*u))
  }else{
    u = 3/2*(u-1/3)
    return(u)
  }
}
x = as.numeric(lapply(u, F_inv))
hist(x,freq = FALSE)
#c
F_inv= function(u){
  alpha = 1:10
  alpha = alpha/sum(alpha)
  P = cumsum(c(0,alpha))
  i = sum(u>=P)
  u = (u-P[i])/(P[i+1]-P[i])
  return(u^(1/i))
}
x = as.numeric(lapply(u, F_inv))
hist(x,freq = FALSE)
