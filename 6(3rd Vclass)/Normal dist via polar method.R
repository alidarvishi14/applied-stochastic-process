nsim=10^4
u1=runif(nsim)
u2=runif(nsim)
R2=-2*log(u1)
theta=2*pi*u2
x=sqrt(R2)*cos(theta)
y=sqrt(R2)*sin(theta)
hist(x)

## sin and cos in expensive so:

nsim=10^4*4/pi
v1=2*runif(nsim)-1
v2=2*runif(nsim)-1
inside_points=v1^2+v2^2<1
npsim=sum(inside_points)
u1=runif(npsim)
R2=-2*log(u1)
x=sqrt(R2)*v1[inside_points]/sqrt(v1[inside_points]^2+v2[inside_points]^2)
y=sqrt(R2)*v2[inside_points]/sqrt(v1[inside_points]^2+v2[inside_points]^2)

library(gplots)
hist2d(data.frame(x,y))
