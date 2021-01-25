nsim = 10^4
results = rep(0,nsim)
for (i in 1:nsim){
  n = 0
  check_list = rep(0,11)
  while (sum(check_list)!=11){
    sum = sum(ceiling(6*runif(2)))
    check_list[sum-1]=1
    n = n+1
  }
  results[i] = n
}
mean(results)
sd(results)
