dim(mtcars)
class(mtcars)

wt<-mtcars$wt
mpg <- mtcars$mpg

plot(x=wt,y=mpg,
  main = "중량-연비 그래프",
  xlab = "중량",
  ylab = "연비",
  col = "red",
  pch = 19
)

vars<-c("mpg","disp","drat",'wt')
target<-mtcars[,vars]
head(target)
class(target)

pairs(x=target,main="다중변수 산점도")
irisdata <- iris[,3:4]
head(irisdata)

point<-as.numeric(iris$Species)
point
class(point)
color<-c("red","green","blue")
plot(x=irisdata,main="품종별 산점도",pch=c(point),col=color[point])
pairs(x=irisdata,main="품종별 산점도",pch=c(point),col=color[point])
