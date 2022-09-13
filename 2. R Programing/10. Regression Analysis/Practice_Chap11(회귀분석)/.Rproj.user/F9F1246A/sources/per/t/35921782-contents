#mlbench 패키지의 BostonHousing 데이터셋은 보스턴 지역의 지역 정보 및 평균
#주택가격(medv) 정보가 저장되어 있다. 다른 변수들을 이용하여 medv를 예측하는
#모델을 만드시오.(단 chas 변수는 모델을 만들 때 제외한다.)
#(1) 전체 변수를 이용하여 평균 주택가격(medv)을 예측하는 회귀모델을 만들고 
#    회귀식을 나타내시오.
#(2) 평균 주택가격(medv)을 예측하는 데 도움이 되는 변수들만 사용하여 예측하는 
#    회귀모델을 만들고 회귀식을 나타내시오.
#(3) (1), (2)에서 만든 예측모델의 설명력(Adjusted R-squared)을 비교해 보시오.

# (1)문제
library(mlbench)
data("BostonHousing")
head(BostonHousing)
ds <- BostonHousing[,-4]
head(ds)
mod <- lm(medv ~ .,data = ds)
summary(mod)

# 회귀식 만들기
medv = 36.891960
      -0.113139 * ds$crim
      +0.047052 * ds$zn
      +0.040311 * ds$indus
      -17.366999 * ds$nox
      +3.850492 * ds$rm
      +0.002784 * ds$age
      -1.485374 * ds$dis 
      +0.328311 * ds$rad
      -0.013756 * ds$tax
      -0.990958 * ds$ptratio 
      +0.009741 * ds$b
      -0.534158 * ds$lstat

# (2)문제
library(MASS)
mod2 <- stepAIC(mod)
summary(mod2)

# 회귀식 만들기
medv = 36.620311
-0.114056 * ds$crim
+0.045742 * ds$zn
-16.469153 * ds$nox
+3.844639 * ds$rm
-1.526099 * ds$dis 
+0.315531 * ds$rad
-0.012674 * ds$tax
-0.978442 * ds$ptratio 
+0.009730 * ds$b
-0.528103 * ds$lstat

# (3)문제
# mod는 R-squared값이 0.7291에서 mod2에서는 R-squared값이0.7299로
# 더 높아졌다.