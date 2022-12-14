#install.packages('igraph')
library(igraph)
edge_list <- matrix(data = 0, nrow = 5 , ncol = 2)
edge_list[1,1] <- 1
edge_list[2,1] <- 2
edge_list[3,1] <- 3
edge_list[4,1] <- 4
edge_list[5,1] <- 5
edge_list[1,2] <- 3
edge_list[2,2] <- 3
edge_list[3,2] <- 4
edge_list[4,2] <- 1
edge_list[5,2] <- 1
edge_list
ig <- graph.data.frame(edge_list, directed = FALSE)
metrics <- data.frame(
    deg <- degree(ig),
    transitivity(ig,type = 'local'),
    betweenness(ig),
    mean_distance(ig),
    closeness(ig)
)
colnames(metrics) <- c("D","CC","B","APL","C")
plot(ig, layout=layout.circle, main="5-5 circle")
