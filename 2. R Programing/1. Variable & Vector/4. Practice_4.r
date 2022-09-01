ds <- c(10,15,70,85)
myinfo <- list(name="홍길동",age=12,status=T,score=ds)
myinfo
myinfo[[1]]
myinfo$name

vmyinfo <- unlist(myinfo)
vmyinfo
v1 = as.integer(vmyinfo[2])
v1
bt <- c('A','A','B','B','A','AB','O','O')
bt
fbt <- factor(bt)
fbt

levels(fbt)

length((fbt))
fbt[9]<-'B'
fbt
fbt[10]<-'Z'
