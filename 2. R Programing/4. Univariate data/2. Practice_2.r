weight <- c(60,62,64,65,68,69)
weightheavy <- c(weight,120)
weight
weightheavy

mean(weight)
mean(weightheavy)

median(weight)
median(weightheavy)

mean(weight,trim=0.2)
mean(weightheavy,trim=0.2)

data <- c(60,62,64,65,68,69,120)

quantile(data)
quantile(x=data,probs=(0:10)/10)

summary(object=data)

mydata <- c(1:10)

var(x=mydata)
sd(x=mydata)

mydata2 <- c(60,62,64,65,68,69)
mean(mydata2)

var(x=mydata2)
sd(x=mydata2)

range(mydata2)

diff(x=range(mydata2))
