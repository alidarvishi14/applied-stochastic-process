n=11
dmin = 0.25
while(TRUE){
  list = matrix(runif(2*n),nrow = n)
  break_bool = TRUE
  for (i in 1:(n-1)){
    for (j in (i+1):n){
      break_bool = break_bool * ((list[i,1]-list[j,1])^2+(list[i,2]-list[j,2])^2>=dmin^2)
    }
  }
  if(break_bool){
    break
  }
}
list
plot(list[,1],list[,2],type = 'p')
