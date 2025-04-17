install.packages("ggplot2")
library(ggplot2) gglpot()
library(dplyr)  %>%
View(mpg)

hist(mpg$cty , col = "red", border = "purple")
hist(mpg$cty)
mpg%>%

mpg%>%
  ggplot()+
  geom_histogram( aes(x=cty), bins=10, color = "navy", fill="red")

plot(mpg$displ, mpg$cty), col='red')

mpg%>%
  ggplot()+
  geom_point(aes(x=displ, y=cty), color="red", size=3)

mpg%>%
  ggplot()+
  geom_point(aes(x=displ, y=cty, color=cyl))

mpg%>%
  ggplot()+
  geom_point(aes(x=displ, y=cty, color=cyl, size = drv))

mpg%>%
  ggplot()+
  geom_point(aes(x=displ,y=cty,color=cyl,size=drv))

mpg%>%
  ggplot()+
  geom_point(aes(x=displ,y=cty,color=cyl,size=drv, shape=class))

boxplot(mpg$hwy)

summary(mpg$hwy)

mpg%>%
  ggplot()+
  geom_boxplot(aes(y=hwy))

# two variable boxplot 

str(mpg)
mpg%>%
  ggplot()+
  geom_boxplot(aes(x=as.factor(cyl),y=cty))

#if we use boxplot, one has to be categorical

#create a boxplot for hwy mileage broken down by class variable 

mpg%>%
  ggplot()+
  geom_boxplot(aes(x=class, y=hwy))


#barplot = looks like histogram 

#  stat='identity'

#create a barplot using mean cty mileage by transmition

test = mpg%>%
  group_by(trans)%>%
  summarize(
    MeanCityMil = mean(cty)
  )
View(test)

test2 = mpg%>%
  group_by(cyl)%>%
  summarize(
    MeanHwyMil = mean(hwy)
  ) 

View(test2)

test2 %>%
  ggplot()+
  geom_bar(aes(x=as.factor(cyl), y=MeanHwyMil), stat="identity")
  
#as.factor = removes the blank coloumn in the graph 


mpg%>%
  group_by(cyl)%>%
  summarize(
    MeanHwyMil = mean(hwy)
  ) %>%
  ggplot()+
  geom_bar(aes(x=cyl, y=MeanHwyMil), stat="identity")
