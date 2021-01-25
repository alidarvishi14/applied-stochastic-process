non_homo_pois = function(){
  lambda = function(t){
    return(10+2*exp(-t))
  }
  lambda_0 = 12
  while(TRUE){
    u = runif(1)
    t = -1/lambda_0*log(u)
    if(runif(1)<=lambda(t)/lambda_0){
      break
    }
  }
  return(t)
}

T=10

t = 0
Na = 0
Nd = 0
Nl = 0
n=0
A=c()
D=c()
L=c()
ta = non_homo_pois()
td=Inf
tl=c()
while(TRUE){
  if(ta<=td & ta<=min(tl,Inf) & ta < T){
    print("arrival")
    t=ta
    Na=Na+1
    n=n+1
    ta=ta+non_homo_pois()
    if(n==1){
      td=t+rgamma(1,1,1)
    }else{
      tl[n-1] = t+rf(1,10,10)/2
    }
    A[Na]=t
  }else if(td<=ta & td<=min(tl,Inf) & td < T){
    print("departure")
    t=td
    n=n-1
    Nd=Nd+1
    if(length(tl)>=2){
      tl = tl[2:length(tl)]
    }else{
      tl =c()
    }
    if(n==0){
      td=Inf
    }else{
      td=t+rgamma(1,1,1)
    }
    D[Nd]=t
  }else if ( min(tl,Inf) <= ta & min(tl,Inf)<= td & min(tl,Inf) <= T){
    print("leaving")
    t=min(tl)
    tl = tl[!(tl==t)]
    n=n-1
    Nl=Nl+1
    L[Nl]=t
  }else if(td>T & n>0){
    print("timesUp")
    t=td
    Nd=Nd+1
    D[Nd]=t
    L = append(L,rep(t,n))
    Nl = Nl+n
    n = 0
    break
  }
  print(paste(t,n,td,ta))
  print(paste("tl:",min(tl,Inf)))
}
print(paste("number of loses:",Nl))