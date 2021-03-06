nsim = 10^5
z1 = rnorm(2*nsim)
z2 = rnorm(nsim)
z2 = matrix(c(z2,-z2),ncol = 2)
theta1 = z1^3*exp(z1)
theta2 = rowMeans(z2^3*exp(z2))
print(mean(theta1))
print(mean(theta2))
print(sd(theta1))
print(sd(theta2))