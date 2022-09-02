z<-matrix(1:20,nrow=4,ncol=5)
z
z2<-matrix(1:20,nrow=4,ncol=5,byrow = TRUE)
z2
x<-c(1:4)
x
y<-c(5:8)
y
z<- matrix(1:20,nrow=4,ncol=5)
z
m1<-cbind(x,y)
m1
m2<-rbind(x,y)
m2
m3<-rbind(m2,x)
m3

m4<-cbind(z)
m4

z<-matrix(1:20,nrow=4,ncol=5)
z
z[2,3]
z[2,3]<-55
z
z[1,]
z[,1]

z[1,1:3]
z[1,c(1,2,4)]

score <- matrix(c(90,85,96,88,55,77,88,99,100,47,55,33),nrow=4,ncol=3)
score

rownames(score)<-c('존','홍길동','신은혁','김말자')
score

colnames(score)<-c('국어','영어','수학')
score
score['존','국어']
score[,'수학']
sum(score[,'수학'])
