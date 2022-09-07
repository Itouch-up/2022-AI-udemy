ggplot(iris, aes(y=Petal.Length))+geom_boxplot(fill="yellow")

ggplot(iris, aes(y=Petal.Length,fill=Species))+geom_boxplot(width=0.8,outlier.shape=2,outlier.color="red")

ggplot(iris, aes(y=Petal.Length,fill=Species))+geom_boxplot(width=0.8,outlier.shape=NA)

year<-1937:1960
cnt<-as.vector(airmiles)

df<-data.frame(year,cnt)
df

ggplot(df,aes(x=year,y=cnt)) + geom_line(col="red",linetype=6,size=1,arrow=arrow())
