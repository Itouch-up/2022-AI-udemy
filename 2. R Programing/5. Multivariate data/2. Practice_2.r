beers <- c(5,2,9,8,3,7,4,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)
length(bal)

data<-data.frame(beers,bal)
dim(data)
head(data)

plot(bal~beers,data=data)
res<-lm(bal~beers,data=data)
class(res)

abline(res)

cor(beers,bal)

cor(iris[,1:4])

mtcars

mpg <- mtcars$mpg
disp <- mtcars$disp

plot(x=mpg,y=disp)
cor(mpg,disp)

wt <- mtcars$wt
mpg <- mtcars$mpg
disp <- mtcars$disp
carb<- mtcars$carb
plot(x=mpg,y=disp)
plot(x=mpg,y=wt)
plot(x=mpg,y=carb)

cor(mpg,disp)
cor(mpg,wt)
cor(mpg,carb)
