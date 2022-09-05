iris
dim(iris)


apply(iris[,1:4],1,mean)
apply(iris[,1:4],2,sum)

mymax <- function(x,y){
  if(x>y){
    max<-x
  }else{
    max<-y
  }
  return(max)
}
max(10,5)

a<-mymax(50,20)
b<-mymax(50,200)
print(a+b)

mydiv<-function(x,y=2){
  result <- x/y
  return(result)
}

mydiv(10,3)
mydiv(100)

myfunc<-function(x,y){
  sum<-x+y
  mul<-x*y
  return(list(sum,mul))
}
result<-myfunc(5,8)
result

myadd<-function(x,y){return(x+y)}
mymin<-function(x,y){return(x-y)}
