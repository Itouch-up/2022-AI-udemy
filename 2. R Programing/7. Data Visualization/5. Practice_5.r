install.packages("Rtsne")
library(Rtsne)
library(ggplot2)

ds <- iris[,-5]
ds

dup <- which(duplicated(ds))
dup
ds <- ds[-dup,]
ds
ds.y<-iris$Species[-dup]
ds.y

tsne<-Rtsne(ds,dims=2,perplexity=10)
tsne

df.tsne<- data.frame(tsne$Y)
head(df.tsne)

ggplot(df.tsne,aes(x=X1,y=X2,color=ds.y))+geom_point(size=2)

install.packages("rgl")
install.packages("car")
library("car")
library("rgl")
library('mgcv')

tsne<-Rtsne(ds,dims=3,perplexity=10)
df.tsne<-data.frame(tsne$Y)
head(df.tsne)
point <- as.integer(ds.y)
color<-c("red","green","blue")
scatter3d(x=df.tsne$X1,y=df.tsne$X2,z=df.tsne$X3,point.col=color[point],surface=F)
