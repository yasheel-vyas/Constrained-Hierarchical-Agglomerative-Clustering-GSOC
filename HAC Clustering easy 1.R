library(rioja)

View(dissimilarity)


diss=dist(dissimilarity,method='canberra')
#clust=chclust(diss,method = "coniss")     #To plot the dendogram using coniss method
clust=chclust(diss,method = "conslink")    #To plot the dendogram using conslink method
plot(clust,hang=-1)
  
#creating the hclust object to implement hierarchial clustering

hc = hclust(d = dist(dissimilarity, method = 'canberra'), method = 'ward.D')
y_hc = cutree(hc,6)
diss=as.matrix(diss)    #To convert diss into a data matrix  


# Visualising the clusters
library(cluster)
clusplot(diss,
         y_hc,
         lines = 0,
         shade = FALSE,
         color = TRUE,
         labels= 1,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters'),
         )

