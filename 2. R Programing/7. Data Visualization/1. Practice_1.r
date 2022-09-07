install.packages("treemap")
library("treemap")
data("GNI2014")
head(GNI2014)

dim(GNI2014)

treemap(
  GNI2014,
  index = c("continent", "iso3"),
  vSize = "population",
  vColor = "GNI",
  type = "dens",
  bg.labels = "yellow",
  title = "세계국가별 인구 및 소득"
)

st <- data.frame(state.x77)
head(st)
st <- data.frame(st,stname=rownames(st))
st
treemap(
  st,
  index = c("stname"),
  vSize = "Area",
  vColor = "Income",
  type = "dens",
  title = "미국 주별 면적 및 소득"
)

st <- data.frame(state.x77)
symbols(st$Illiteracy,st$Murder,
  circles = st$Population,
  inches = 0.3,
  fg = "white",
  bg = "lightgray",
  lwd = 1.5,
  xlab = "rate of Illiteracy",
  ylab = "crime",
  main = "문맹율에 따른 범죄율"
)
text(st$Illiteracy,st$Murder,
  rownames(st),
  cex = 0.6,
  col = "brown"
)

