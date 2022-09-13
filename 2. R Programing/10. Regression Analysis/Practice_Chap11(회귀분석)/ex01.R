# 회귀분석
# 단순회귀분석 W, b값을 구하는 것

cars

# 산점도 그리기
plot(dist~speed, data = cars)

# 회귀모델 구하기( y = Wx + b ) ( dist = 3.932*speed - 17.579 )
model <- lm(dist~speed, data = cars)
model

# 회귀선을 차트위에 그리기
abline(model)

# b, W값을 출력
coef(model)[1]    # b값
coef(model)[2]    # W값

b <- coef(model)[1]
W <- coef(model)[2]

cars

# 예측값 예시
speed <- 25
dist <- W*speed + b
dist

speed <- 50
dist <- W*speed + b
dist

speed <- 100
dist <- W*speed + b
dist

speed <- cars[,1] # 주행속도
speed
pred <- W * speed + b   # 예상 제동거리
pred

# 오차구하기
compare <- data.frame(pred, cars[,2], pred-cars[,2])
colnames(compare) <- c("예상치", "실제값", "오차값")
compare