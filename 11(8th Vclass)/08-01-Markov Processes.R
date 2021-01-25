n =100
m = 10^3
list = sample(0:1,replace = TRUE,size = n)
list
for (j in 1:m){
  k=ceiling(n*runif(1))
  if(list[k]==1){
    list[k]=0
  }else{
    sums = list + c(0,list[1:(n-1)])+c(list[2:n],0)
    if(sums[k]==0){
      list[k]=1
    }
  }
}
list