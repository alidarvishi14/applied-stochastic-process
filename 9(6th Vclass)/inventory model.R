lambda=1/12
nsim=10
T=10^5
G = function(){
  return(floor(ceiling(runif(1,min = 0, max = 5))))
}
simulate=function(S,s,T,lambda){
  t=0
  L=3
  h=1
  r=3000
  x=0
  y=0
  C=0
  H=0
  R=0
  t1=Inf
  t0=0
  while(TRUE){
    if(t0<t1){
      H=H+(t0-t)*x*h
      t=t0
      D=G()
      w=min(D,x)
      R=R+w*r
      x=x-w
      t0=t0+rexp(1,rate = lambda)
    }else{
      H=H+(t1-t)*x*h
      t=t1
      C=C+2000*y+20000
      x=x+y
      y=0
      t1=Inf
    }
    if(x<=s & y==0){
      y=S-x
      t1=t+L
    }
    if(t+min(t0,t1)>T){
      break
    }
  }
  return((R-C-H)/T)
}
list_S=130+1:20
list_s=1:10
sims=matrix(rep(0,length(list_s)*length(list_S)),nrow = length(list_S),ncol = length(list_s))
for (i in 1:length(list_S)){
  for (j in 1:length(list_s)){
    sims[i,j]=mean(replicate(simulate(list_S[i],list_s[j],T,lambda),n=nsim))
  }
  print((100*i)/(length(list_S)))
}
heatmap(sims)
