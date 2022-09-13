# 다중선형 회귀분석
library(car)
# Prestige데이터셋을 이용
head(Prestige)
class(Prestige)

# 회귀식 작성을 위한 데이터 준비
newdata <- Prestige[,c(1:4)]
# 다중산점도 그리기
plot(newdata, pch=16, col="blue", main="Matrix Scatterplot")
# 회귀모델식 도출(income=b0 + b1x1 + b2x2 ... bnxn)
mod1 <- lm(income ~ education + prestige + women, data = newdata)
summary(mod1)

#stepAIC()이용하기 위해서 MASS패키지 로딩
library(MASS)
#데이터준비
newdata2 <- Prestige[,c(1:5)]
head(newdata2)
#회귀 모델 만들기
mod2 <- lm(income ~ .,data = newdata2)

#독립변수들을 기여도에 따라 선별해서 제거하기
mod3 <- stepAIC(mod2)
mod3
summary(mod3)

dim(newdata2)
head(newdata2)

# 연봉 예상하기
women1 <- 11.16
prestige1 <- 68.8
income1 <- 431.574 - (48.385*women1) + (165.875*prestige1)
income1

women2 <- 5.13
prestige2 <- 77.6
income2 <- 431.574 - (48.385*women2) + (165.875*prestige2)
income2