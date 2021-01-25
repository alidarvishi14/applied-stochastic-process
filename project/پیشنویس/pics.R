install.packages("igraph")
library(igraph)
set.seed(123)

# generate random bipartite graph.
g <- sample_bipartite(30, 10, p=.4)
# check the type attribute:
V(g)$type

# define color and shape mappings.
col <- c("steelblue", "orange")
shape <- c("circle", "square")

plot(g,
     vertex.color = col[as.numeric(V(g)$type)+1],
     vertex.shape = shape[as.numeric(V(g)$type)+1],
)

library(ggplot2)
x=rep(1:10,10)
y=ceiling((1:100)/10)
color=c(rep(0,34),1,rep(0,65))
color=c(rep(0,33),1,1,1,rep(0,64))
dots=data.frame(x,y,infected=as.factor(color))
ggplot(dots,aes(x=x,y=y,color=infected))+geom_point()+
  scale_x_continuous(breaks = 1:10)+
  scale_y_continuous(breaks = 1:10)+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())
?igraph

g <- barabasi.game(20,directed = FALSE,power = 2)
plot(g, layout=layout_with_fr, vertex.size=4,
     vertex.label.dist=0.5, vertex.color="red")

g <- make_full_graph(5) %du% make_full_graph(5) %du% make_full_graph(5)
g <- add_edges(g, c(1,6, 1,11, 6,11))
com <- cluster_spinglass(g, spins=5)
V(g)$color <- com$membership+1
g <- set_graph_attr(g, "layout", layout_with_kk(g))
plot(g, vertex.label.dist=1.5)
