library(ggplot2)
library(dplyr)

mpg %>%
  ggplot() +
  geom_histogram(aes(x=cty), bins=10, color= "navy", fill= "red")
#Create a s catter plot for displ and cty. comment on any pattern you see
plot(mpg$displ, mpg$cty, col= "red")

mpg %>%
  ggplot() +
  geom_point(aes(x=displ, y=cty), color= "red", size = 3)

#CREATE A SCATTER PLOT FOR DISPL AND CTY, COLOR CODED BY CYL
mpg%>%
  ggplot() +
  geom_point(aes(x= displ, y=cty, color=cyl) )

#lets introduce an 4th variable into the picture
#put the dry train in the size parameter

mpg%>%
  ggplot() +
  geom_point(aes(x= displ, y=cty, color=cyl, size= drv) )

#we can also change the shape of the marker
# add "class" variable into the chart using shape of the marker

mpg%>%
  ggplot() +
  geom_point(aes(x= displ, y=cty, color=cyl, size= drv, shape= class) )

#Single variable boxplot

boxplot(mpg$hwy)

summary(mpg$hwy)



mpg%>%
  ggplot() +
  geom_boxplot(aes(y=hwy))

str(mpg)

mpg %>%
  ggplot()+
  geom_boxplot( aes(x=as.factor(cy1), y=cty) )
  
#create a boxplot for hwy mileage broken down by class variable
mpg%>%
  ggplot() +
  geom_boxplot( aes(x=class, y=hwy))

#Create a barplot using mean hwy mileage by cyl

mpg%>%
  group_by(trans) %>%
  summarize(
    MeanCityMil = mean(cty)
  ) %>%
  ggplot() +
  geom_bar( aes(x=trans, y=MeanCityMil), stat= "identity")
  
GGPLOT2

