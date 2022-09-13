#UCLA 대학원의 입학 데이터를 불러와서 mydata에 저장한 후 다음 물음에 답하시오. 
#https://stats.idre.ucla.edu/stat/data/binary.csv
#(1) gre, gpa, rank를 이용해 합격 여부(admit)를 예측하는 
#로지스틱 모델을 만드시오(0: 불합격, 1:합격).
#(2) mydata에서 합격 여부(admit)를 제외한 데이터를 예측 대상 데이터로
#하여 (1)에서 만든 모델에 입력하여 합격 여부를 예측하고 실제값과 예측값을 나타내시오.
#(3) 만들어진 모델의 예측 정확도를 나타내시오.

# 문제1
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
dim(mydata)
class(mydata)
head(mydata)

mod <- glm(admit ~ ., data = mydata)
summary(mod)

# 문제2
pred <- predict(mod, mydata[,c("gre","gpa","rank")])
pred
pred <- round(pred, 0)  # 예측값
result <- data.frame(예측값=pred, 실제값=mydata$admit)
result

# 문제3
acc <- mean(result$예측값 == result$실제값)
acc


