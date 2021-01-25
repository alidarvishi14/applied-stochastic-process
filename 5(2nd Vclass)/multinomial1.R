# n << r
n=10^1
r=10^3
p=rep(1,r)/r
P=cumsum(p)
x=rep(0,r)
for (i in 1:n){
  u=runif(1)
  x[sum(P<u)+1]=x[sum(P<u)+1]+1
}
x
# r << n

n=10^5
r=10
p=rep(1,r)/r
x=rep(0,r)
for (i in 1:r){
  x[i]=sum(runif(n-sum(x[1:i]))<p[i]/(1-sum(p[0:(i-1)])))
}
x
