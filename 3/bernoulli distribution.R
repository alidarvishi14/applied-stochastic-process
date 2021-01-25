p=0.4
n=100
bernoulli=runif(n)<p

n=10^1
p=0.5
u=runif(1)
x=rep(0,n)
for (i in 1:n){
  x[i]=u<p
  if(x[i]){
    u=u/p
  }else{
    u=(u-p)/(1-p)
  }
}