k=100
n=20
nsim = 10^4
sigma=0.3
mu=-0.05
alpha=(mu+((sigma^2)/2))
gain=c()
X = matrix(rnorm(nsim*n,mean = mu,sd = sigma),nrow = nsim)
S = 100*exp(rowCumsums(X))
for (i in 1:nsim){
  sp = k
  for (day in 1:n){
    if(S[i,day]>k){
      finish = TRUE
      for (j in 1:(n-day)){
        b = (j*mu-log(k/S[i,day])/(sigma*sqrt(j)))
        if(S[i,day]<= k + S[i,day]* exp(j*alpha)*pnorm(sigma*sqrt(j)+b)-k*pnorm(b)){
          finish = FALSE
        }
      }
    }
    if(finish){
      print(paste("break in day",day))
      sp = S[i,day]
      break
    }
  }
  gain[i] = sp - k
}
mean(gain)