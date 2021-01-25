n = 5
nsim = 10^4
p = (1:n)
p = p/sum(p)
N = (1:n)^2
results = rowMaxs(matrix(rgamma(nsim*n,N,p) , nrow = nsim ,byrow = TRUE))
mean(results)
sd(results)