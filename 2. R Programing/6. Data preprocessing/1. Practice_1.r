z <- c(1,2,3,NA,5,NA,8)
z

sum(z)
mean(z)

is.na(z)
sum(is.na(z))

sum(z,na.rm = TRUE)
mean(z,na.rm = TRUE)

z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)

z1[is.na(z1)]
z1

z3<- as.vector(na.omit(z2))
z3

x<-iris
head(x)

x[1,2]<-NA;x[1,3]<-NA
x[2,3]<-NA;x[3,4]<-NA

for(i in 1:ncol(x)){
  thisna <- is.na(x[,i])
  cat(colnames(x)[i],"\t",sum(thisna),"\n")
}

col_na<-function(y){
  return(sum(is.na(y)))
}

na_count<-apply(x,2,FUN = col_na)

rowSums(is.na(x))
head(x)

sum(is.na(x))

x[!complete.cases(x),]
y<-x[complete.cases(x),]
dim(y)
