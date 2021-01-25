nsim = 10^6
n = 100
hits = rep(0,nsim)
for (i in 1:nsim){
  cards = sample(n)
  hits[i] = sum(cards == 1:n)
}
mean(hits)
var(hits)