n = 30
a = 8000
m = 10
nsim = 10^5
a_list = (0:m)/m*a
p = rep(0,m)
for (k in 1:m){
  list = 1:n
  for (i in 1:nsim){
    while (TRUE) {
      idxs = ceiling(n*runif(2))
      if(a_list[k]<=sum((1:n)*list)+(idxs[1]-idxs[2])*(list[idxs[2]]-list[idxs[1]])){
        temp = list[idxs[2]]
        list[idxs[2]]  = list[idxs[1]]
        list[idxs[1]] = temp
        break
      }
    }
    if( a_list[k+1]<=sum((1:n)*list)+(idxs[1]-idxs[2])*(list[idxs[2]]-list[idxs[1]]) ){
      p[k] = p[k]+1
    }
  }
}
exp(sum(log(p/nsim)))