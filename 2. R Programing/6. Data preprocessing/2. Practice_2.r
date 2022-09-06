View(state.x77)
dim(state.x77)

ds<-state.x77
ds
sum(is.na(ds))
ds[2,3]<-NA;ds[3,1]<-NA;ds[2,4]<-NA;ds[4,3]<-NA
for(i in 1:ncol(ds)){
  cat(colnames(ds)[i], ' : ',sum(is.na(ds[,i])),'\t')
}

colSums(is.na(ds))

idx<-c()
for(i in 1:nrow(ds)){
  if(sum(is.na(ds[i,]))<0){
    idx<-c(idx,i)
  }
}
ds[idx,]

ds[!complete.cases(ds),]

cnt<-0
for(i in 1:nrow(ds)){
  if(sum(is.na(ds[i,]))>0){
    cnt<-cnt+1
  }
}
cnt

sum(rowSums(is.na(ds))>0)
for (i in 1:nrow(ds)){
  if(sum(is.na(ds[i,]))>0){
    idx<-c(idx,i)
  }
}
new<- dim(ds[-idx,])
View(new)

new<-ds[complete.cases(ds),]
dim(new)
