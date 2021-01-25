nsim=10^3
lambda=1
r=10
x=c()
allx=c()
ally=c()
for (i in 1:nsim){
  newpoints=c()
  S=0
  while (TRUE) {
    S=S+rexp(1,rate=lambda)
    if(S>pi*r^2){
      break
    }
    newpoints[length(newpoints)+1]=S
  }
  newpoints=sqrt(newpoints/pi)
  thetas=runif(n=length(newpoints),min=0,max=2*pi)
  xs=newpoints*cos(thetas)
  ys=newpoints*sin(thetas)
  x[1:2+length(x)]=data.frame(xs=xs,ys=ys)
  allx[1:length(newpoints)+length(allx)]=xs
  ally[1:length(newpoints)+length(ally)]=ys
}
library(gplots)
hist2d(data.frame(allx,ally))
