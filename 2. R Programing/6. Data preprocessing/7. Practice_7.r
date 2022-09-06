agg <- aggregate(iris[,-5],by = list(iris$Species),FUN = mean)
agg
agg <- aggregate(iris[,-5],by = list(표준편차 = iris$Species),FUN=sd)
agg
head(mtcars)
agg <- aggregate(mtcars,by=list(cyl=mtcars$cyl,vs=mtcars$vs),FUN=max)
agg

x <- data.frame(name=c("a","b","c"),math=c(90,80,40))
x
y <- data.frame(name=c("a","b","d"),korean=c(90,80,40))
y

z <- merge(x,y,by=c("name"))
z

merge(x,y,all.x = T)
merge(x,y,all.y=T)
merge(x,y,all=T)

x <- data.frame(name=c("a","b","c"),math=c(90,80,40))
y <- data.frame(sname=c("a","b","d"),korean=c(90,80,40))
x
y
merge(x,y,by.x=c('name'),by.y=c('sname'),all=T)
