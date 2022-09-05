favorite<-c('winter','summer','spring','summer','summer','spring','fall','fall','summer','fall')
class(favorite)
length(favorite)
table(favorite)
table(favorite)/length(favorite)

ds<-table(favorite)
class(ds)
str(ds)
ds

c<-c('green','red','yellow','black')
barplot(ds,main='season',col=c)

pie(ds,main='season',col=c)

favoriatecolor<-c(2,3,1,1,1,3,1,1,1,2,1)
length(favoriatecolor)
favoriatecolor
ds<-table(favoriatecolor)
class(ds)

barplot(ds,main='color',col=c)
c <- c('green','red','blue')

names(ds)<-c
ds
pie(ds,main='color',col=c)

height<-c(9,15,20,6)
name<-c('영업1팀','영업2팀','영업3팀','영업4팀')
barplot(height,names.arg=name,main='part',col=rainbow(length(height)),xlab='part',ylab='won')


x<-c(9,15,20,6)
label<-c('영업1팀','영업2팀','영업3팀','영업4팀')
pie(height,main='part')

pie(x,init.angle=90,labels=label,main='part')
pct<-round(x/sum(x)*100)
pct

label<-paste(label,pct)
label<-paste(label,'%')
pie(x,init.angle=90,labels=label,col=rainbow(length(x)),main='part')
