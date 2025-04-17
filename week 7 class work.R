library(dplyr)
library(ggplot2)
mpg
View(mpg)

meanDispl = mean(mpg$displ)
meanCty = mean(mpg$cty)


mpg%>%
  ggplot()+
  geom_point(aes(x=displ, y=cty), color="navy")+
  geom_vline(xintercept = meanDispl, color = "red")+
  geom_hline(yintercept = meanCty, color = "red")+
  xlab("Engine Displacement")+
  ylab("Milage per Galon in the City")+
  labs(title = "MPG in City vs Engine Size")+
  theme(axis.title.x=element_text(color = "blue"), plot.title=element_text(hjudt=0.5,color = "red" ))

#if we change mean to numbers also it will work. ' 

plot(mpg$cty , mpg$displ)
plot(mpg$hwy , mpg$displ)
boxplot(mpg$cty, as.factor(mpg$trans))
hist(mpg$hwy)

par(mfcol = c(2,2))

dev.off()

par(mfcol = c(2,1))

par(mfcol = c(3,1))

#Y ~ X notation : y is a function of X 


cdc = read.csv("datasets/cdc.csc")
View(cdc)

Avg_H = mean(cdc$height)
Avg_W = mean(cdc$weight)

median_h = median(cdc$height)
median_w = median(cdc$weight)

mode_G = mode(cdc$genhlth)
table(cdc$genhlth)

names(sort(-table(cdc$genhlth)))[1]

#std deviatoin
sdH = sd(cdc$height)
sdW = sd(cdc$weight)

max(cdc$height)
min(cdc$weight)

var(cdc$height)
var(cdc$weight)

CVH = sdH/Avg_H
CVW = sdW/Avg_W

IQR(cdc$height)
IQR(cdc$weight)
summary(cdc$height)

