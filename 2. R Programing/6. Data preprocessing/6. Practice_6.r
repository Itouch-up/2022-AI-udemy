state <- data.frame(state.x77)
rm(state)
state

state[order(state[,'Population']),]
state[order(state[,'Income'],decreasing = T),]

tmp<-state.x77[order(state.x77[,'Illiteracy']),]
tmp[1:10,'Illiteracy']

mtcars

mtgears <- split(mtcars,mtcars$gear)
class(mtgears)

mtgears$`3`
mtgears$`5`

mtgears35<-rbind(mtgears$`3`,mtgears$`5`)
mtgears35

subset(mtcars,wt>=1.5&wt<3.0)

idx <- sample(1:nrow(iris),size = nrow(iris))
idx
iris[idx,]
