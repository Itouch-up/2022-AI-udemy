st<-data.frame(state.x77)
st

boxplot(st$Income)

boxplot.stats(st$Income)$out

outvalue<-boxplot.stats(st$Income)$out
outvalue

st$Income[st$Income %in% outvalue] <-NA
View(st)

new<-st[complete.cases(st),]
dim(new)

boxplot(new$Income)

boxplot(st$Population)
poutValue<-boxplot.stats(st$Population)$out
class(poutValue)

st$Population[st$Population %in% poutValue] <- NA
View(st$Population)
sum(is.na(st))

pnew <-st[complete.cases(st),]
View(pnew)
ppoutValue<-boxplot(pnew$Population)
ppoutValue
pnew$Population[pnew$Population %in% ppoutValue]<-NA
ppnew<-pnew[complete.cases(pnew),]
boxplot(ppnew$Population)
