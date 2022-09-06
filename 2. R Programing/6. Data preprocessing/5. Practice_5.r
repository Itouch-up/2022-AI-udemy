sp <- split(x = iris,iris$Species)
View(sp)
class(sp)

summary(sp)

setosa<-subset(iris,Species == "setosa")
class(setosa)
summary(setosa)

subset(iris,Sepal.Length>7.5)
subset(iris,Sepal.Length>5.1 & Sepal.Width>3.9)
subset(iris,Sepal.Length>7.6,select = c(Petal.Length,Petal.Width))

x<-1:100
y<-sample(x,size=10,replace=FALSE)
y

idx<-sample(1:nrow(iris),size=50,replace=FALSE)
idx
iris50<-iris[idx,]
dim(iris50)
head(iris50)

sample(1:20,size=5)

set.seed(100)

sample(1:20,size=5)

com<-combn(1:5,m=3)
class(com)
for(i in 1:ncol(com)){
  cat(com[,i],"\n")
}
