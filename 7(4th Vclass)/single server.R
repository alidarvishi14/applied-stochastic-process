T=10
rate=12
mu=1/12
sd=1/80

t=0
Na=0
Nd=0
n=0
A=c()
D=c()
ta=rexp(1,rate=rate)
td=Inf

while(TRUE){
  if(ta<=td & ta<=T){
    t=ta
    Na=Na+1
    n=n+1
    ta=ta+rexp(1,rate=rate)
    if(n==1){
      y=max(0,rnorm(1,mean=mu,sd=sd))
      td=t+y
    }
    A[Na]=t
  }
  if(td<ta & td<=T){
    t=td
    n=n-1
    Nd=Nd+1
    if(n==0){
      td=Inf
    }else{
      y=max(0,rnorm(1,mean=mu,sd=sd))
      td=t+y
    }
    D[Nd]=t
  }
  if(min(ta,td)>T & n>0){
    t=td
    n=n-1
    Nd=Nd+1
    if(n==0){
      td=Inf
    }else{
      y=max(0,rnorm(1,mean=mu,sd=sd))
      td=t+y
    }
    D[Nd]=t
  }
  if(min(ta,td)>T & n==0){
    tp=max(t-T,0)
    break
  }
}