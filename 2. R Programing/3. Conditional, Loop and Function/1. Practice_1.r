jobtype<-'A'
if(jobtype=='A'){
  bonus<-200
}else{
  bonus<-100
}
print(bonus)

score <-85

if(score>90){
  grade<-"A"
}else if(score>80){
  grade<-"B"
}else if(score>70){
  grade<-"C"
}else if(score>60){
  grade<-"D"
}else{
  grade<-"F"
}

grade
rm(grade)

a<-10
b<-20
if((a>5)&(b>5)){
  print(a+b)
}

if((a>5)|(b>30)){
  print(a*b)
}

if(a>b){
  c<-a
}else{
  c<-b
}

c

c<-ifelse(a<b,a,b)
c
