n = 2
nsim = 10
exp(1)-1
raw_estimate = rep(0,nsim)
new_estimate = rep(0,nsim)
for (i in 1:nsim){
  U = runif(n)
  c = -cov(exp(U),U)/var(U)
  raw_estimate[i]=mean (exp(U))
  new_estimate[i] = mean(exp(U)+c*(U-0.5))
}
var(raw_estimate)
var(new_estimate)