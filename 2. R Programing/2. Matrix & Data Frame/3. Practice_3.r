mean(iris[,"Sepal.Length"])
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
rownames(iris)
head(iris)
tail(iris)
str(iris)
class(iris)
iris[,5]
class(iris[,5])
levels(iris[,5])
unique(iris[,5])
colSums(iris[,5])
colMeans(iris[,5])
rowSums(iris[,5])
rowMeans(iris[,-5])
rowSums(iris[,-5])
colSums(iris[,-5])
colMeans(iris[,-5])
table(iris[,"Species"])
z<-matrix(1:20,nrow=4,ncol=5)
z
t(z)
setosa<-subset(x=iris,Species=='setosa')
setosa
class(setosa)
v1<-subset(x=iris,(sepal.Length>5.0))&(sepal.Width>4.0)
a<-matrix(data=1:20,nrow=4,ncol=5)
b<-matrix(21:40,4,5)
a
a*2
a
b
a+b
b-a
class(b)
state.x77
str(state.x77)
dim(state.x77)
class(state.x77)
st<-as.data.frame(state.x77)
class(st)
st
iris[1,1]
iris$sepal.Length

st$Area

is.matrix(st)
is.data.frame(st)