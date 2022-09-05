for(i in 1:5){
  print('*')
}
for (i in 1:10){
  print(i)
}
for (i in 1:9){
  cat('2 *',i,'=',2*i,"\n")
}

c<-20
cat("C의 값은",c,"\n")
for (i in 1:20){
  if((i%%2)==0){
    cat("1~20까지의 짝수 : ",i,"\n ")
  }
}

sum<-0
for(i in 1:100){
  sum <- sum+i
}
cat("1~100누적값 : ",sum)

head(iris)

num <- nrow(iris)
mylabel <- c()

for(i in 1:num){
  if(iris$Petal.Length[i]<=1.6){
    mylabel[i]<-'L'
  }else if(iris$Petal.Length[i]>=5.1){
    mylabel[i]<-'H'
  }else{
    mylabel[i]<-'M'
  }
}
mylabel

df_new_iris <- data.frame(iris$Petal.Length,mylabel)
class(df_new_iris)
head(df_new_iris)

while(i<=100){
  sum<-sum+i
  i<-i+i
}
print(sum)

sum<-0
for(i in 1:10){
  sum <-sum+i
  if(i>=5){
    break
  }
}
print(sum)

sum<-0
for(i in 1:10){
  if(1%%2==0){
    next
  }
  sum<-sum+i
}
sum
