# state.x77데이터셋을 이용해서 문맹률을 이용해서 범죄율을 예측
# 문맹률이 0.5, 1.0, 1.5 범죄율 예측하기

state.x77

plot(Murder~Illiteracy, data = data.frame(state.x77))
model <- lm(formula = Murder~Illiteracy, data = data.frame(state.x77))
abline(model)

summary(model)
coef(model)[1]  # b값
coef(model)[2]  # W값

state <- data.frame(state.x77)
Murder = 4.2575 * state$Illiteracy + 2.3968

# 범죄율 예측
Illiteracy <- 0.5
Murder = 4.2575 * Illiteracy + 2.3968
Murder

Illiteracy <- 1.0
Murder = 4.2575 * Illiteracy + 2.3968
Murder

Illiteracy <- 1.5
Murder = 4.2575 * Illiteracy + 2.3968
Murder


# trees 데이터셋을 이용해서 나무둘레(Girth)로 나무의 볼륨(Volume)을 예측하기
# 8.5, 9.0, 95
trees

plot(Volume~Girth, data = trees)
model <- lm(formula = Volume~Girth, data = trees)
abline(model)

summary(model)
coef(model)[1]  # b값
coef(model)[2]  # W값

# 예측하기
Girth <- 8.5
Volume <- 5.0659 * Girth - 36.9435
Volume

Girth <- 9.0
Volume <- 5.0659 * Girth - 36.9435
Volume

Girth <- 10.5
Volume <- 5.0659 * Girth - 36.9435
Volume