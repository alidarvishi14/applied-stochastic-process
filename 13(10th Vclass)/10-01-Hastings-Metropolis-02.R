T = 22
list = c(1:4)
n = length(list)
m = 10^3
for (i in 1:m){
  j = ceiling(n*runif(1))
  k = ceiling(n*runif(1))

  alpha = sum((1:n)*(list))
  beta = alpha + (j-k)*(list[k]-list[j])
  if(runif(1)<=beta/alpha){
    temp = list[k]
    list[k]=list[j]
    list[j]=temp
  }
}
list
sum((1:n)*list)