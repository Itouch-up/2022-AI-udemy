month<-c(1:12)
late<-c(5,8,7,9,4,6,12,13,8,6,6,4)
late2<-c(4,6,5,8,7,8,10,11,6,5,7,3)
late3<-c(1,2,3,4,5,1,10,15,2,4,2,2)
length(late)

plot(
  x=month,
  y=late,
  type="l",
  main="지각생 통계",
  lty = 1,
  lwd = 1,
  xlab = "달",
  ylab = "지각 건수",
  ylim = c(1,15)
)
lines(
  x=month,
  y=late2,
  type = "b",
  col = "blue"
)
lines(
  x=month,
  y=late3,
  type = "b",
  col = "black"
)

year<-c(2015:2026)
pop<-c(51014,51245,51446,51635,51811,51973,52123,52261,52888,52504,52777,51771)

plot(
  x = year,
  y = pop,
  main = "인구수 추계",
  type = "b",
  col = "red",
  xlab = "연도",
  ylab = "인구수,"
)
