install.packages("ggplot2")

library("ggplot2")
month<-c(1:6)
rain<-c(55,50,45,50,60,70)
df<-data.frame(month,rain)
df

ggplot(data   = df,aes(x=month,y=rain))+geom_bar(stat = "identity",width = 0.7,fill = "blue")
ggplot(data   = df,aes(x=month,y=rain)) + geom_bar(stat = "identity",width = 0.7,fill = "blue") + ggtitle("월별 강수량") + theme(plot.title = element_text(size=25,face="bold",colour="blue"))+labs(x="월",y="강수량")+coord_flip()

ggplot(iris,aes(x=Petal.Length))+geom_histogram(binwidth = 0.5)
ggplot(iris,aes(x=Sepal.Width,fill=Species,color=Species))+geom_histogram(binwidth = 0.5,position="dodge")+theme(legend.position = "top")

ggplot(iris,aes(x=Petal.Length,y=Petal.Width))+geom_point()

ggplot(iris,aes(x=Petal.Length,y=Petal.Width,color=Species))+geom_point(size=3)+ggtitle("꽃잎의 길이와 폭")+theme(plot.title =element_text(size=25,face="bold",colour="blue"),legend.position = "top")+labs(x="꽃잎의 길이",y="꽃잎의 넓이")
