n = 13
dmin = 0.25
nsim = 10^4
list = matrix(rep(0,2*n),nrow = n)
for (i in 1:nsim){
  j = ceiling(runif(1)*n)
  templist = list[-j,]
  while (TRUE) {
    temppoints = runif(2)
    break_bool = TRUE
    for (k in 1:(n-1)){
      break_bool = break_bool * ((temppoints[1]-templist[k,1])^2+(temppoints[2]-templist[k,2])^2>=dmin^2)
    }
    if(break_bool){
      break;
    }
  }
  list[j,]=temppoints
}
list
plot(list[,1],list[,2],type = 'p')