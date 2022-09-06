v1<-c(100,70,60,80,40,20,30)
v1

order(v1)
order(v1,decreasing = TRUE)

sort(v1)
sort(v1,decreasing = TRUE)

order(iris$Sepal.Length)
iris

iris[order(iris$Sepal.Length),]

iris[order(iris$Sepal.Length,decreasing = TRUE),]

iris[order(iris$Species,iris$Petal.Length),]
