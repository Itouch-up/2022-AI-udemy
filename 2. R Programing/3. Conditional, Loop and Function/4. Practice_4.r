score<-c(76,84,69,50,95,60,82,71,88,84)
for(i in 1:length(score)){
  if(score[i]==69){
    idx<-i
    break
  }
  print(score[i])
}
idx
length(score)
idx<-which(score==69)
idx
idx<-which(score>=85)
class(idx)

max(score)
which.max(score)
min(score)
which.min(score)

idx<-which(score<=60)
idx
score[idx]<-61
score[c(4,6)]<-1000
score
idx<-which(score>=80)
idx
highscore<-score[idx]
highscore

idx<-which(iris$Petal.Length>5.0)
lenght(idx)

irisbig<-iris[idx,]
irisbig

idx<-which(iris[,1:4]>5.0,arr.ind=TRUE)
idx
