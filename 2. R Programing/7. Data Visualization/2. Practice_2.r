head(mtcars)
mosaicplot(~gear+vs,
  data = mtcars,
  color =T,
  main = "기어와 엔진"
)
mosaicplot(~mpg+vs,
  data = mtcars,
  color =T,
  main = "기어와 엔진"
)
mosaicplot(~cyl+gear,
  data = mtcars,
  color =T,
  main = "기어와 엔진"
)

HairEyeColor
mosaicplot(HairEyeColor,
  color =T,
  main = "Hair Eye Color"
)
