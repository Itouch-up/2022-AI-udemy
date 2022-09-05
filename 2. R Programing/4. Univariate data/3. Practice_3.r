class(cars)
dist<-cars[,2]
hist(
  x=dist,
  breaks = 5,
  col="green",
  border = "blue",
  xlab = "제동거리",
  ylim=c(0,20),
  ylab = "빈도수",
  las = 2,
  main = "제동거리"
)

dim(quakes)

mag <-quakes$mag
mag
summary(mag)

hist(
  x=mag,
  breaks = seq(4,6.4,by=0.5),
  col=rainbow(c(1:6)),
  border="black",
  xlab="지진 강도",
  ylab="발생 건수",
  main="지진 발생 강도의 분포"
)
