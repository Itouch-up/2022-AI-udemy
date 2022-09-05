dist <- cars[,2]
class(dist)
quantile(x=dist)

summary(object=dist)

boxplot(x=dist,main="자동차 제동거리")

boxplot.stats(x.dist)

head(iris)

boxplot(Petal.Length~Species,data = iris, main="품종별 꽃잎의 길이")

boxplot(iris$Petal.Length~iris$Species, main="품종별 꽃잎의 길이")

mag <-quakes$mag
head(mag)
boxplot(x=mag,main="지진 발생 강도 분포",xlab="지진",ylab="발생건수",col = "red")

boxplot.stats(mag)

mtcars

dim(mtcars)
par(mfrow=c(1,3))
barplot(table(mtcars$carb),
  main = "캬브레터 막대그래프",
  xlab = "캬브레터",
  ylab = "빈도수",
  col = "blue"
)
par(mfrow(1,1))