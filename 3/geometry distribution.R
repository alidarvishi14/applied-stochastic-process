p=0.1
q=1-p
P=0
G=0
rand=runif(1)
while(P<rand){
  G=G+1
  P=P+p*q^(G)
}
%%

p=0.5
n=10^6
Geom=floor(log(runif(n))/log(1-p))+1
hist(Geom,breaks=1:max(Geom))
