#로지스틱 회귀분석

iris.new <- iris
#범주형 자료를 정수로 변환하는 과정
iris.new$Species <- as.integer(iris.new$Species)
head(iris.new)

#로지스틱 회귀모델 도출
mod.iris <- glm(Species ~ ., data = iris.new)
summary(mod.iris)

#로지스틱 회귀모델을 이용해서 예측하기
unknown <- data.frame(rbind(c(5.1,3.5,1.4,0.2))) #예측대상데이터
unknown
names(unknown) <- names(iris)[1:4]

#품종 예측
pred <- predict(mod.iris, unknown)
pred
round(pred, 0)

#실제 품종이름을 알아보기
pred <- round(pred, 0)
pred
levels(iris$Species)
levels(iris$Species)[pred]

#다수의 데이터에 대한 예측하기
test <- iris[,1:4]
test
pred <- predict(mod.iris, test)
pred <- round(pred, 0)
answer <- as.integer(iris$Species)
pred == answer

#예측 정확도 계산
acc <- mean(pred == answer)  # 150/150 = 100%, 147/150=98%
acc