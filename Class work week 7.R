library(dplyr)
library(ggplot2)
mpg
View(mpg)

meanDispl = mean(mpg$displ)
meanCty = mean(mpg$cty)

#Create a scatter plot where x is displ, y is cty, color is navy
mpg%>%
  ggplot()+
  geom_point(aes(x=displ, y=cty), color= "navy")+
  geom_vline( xintercept = 3, color = "red")+
  geom_hline( yintercept= 5, color= "red")+
  xlab("Engine Displacement") +
  ylab("Milage per Galon in the City") +
  labs( title = "MPG in City vs Engine Size")
  theme(axis.title.x =element_text(colour = "blue"), plot.title = element_text(hjust = 0.5, color= "red"))
  
  "if we change mean to numbers also it will work"
  
 #questions ti solve
  
  #create the following charts in four panels
  #1. scatter plot of cty
  #2. scatter plot of hwy
  #3. boxplot of cty by trans
  #4. histogram of hwy
  
  #create 2 panels and show me city and hwy by displ
  
  par(mfcol = c(1,1)) #go back to 1 panel window
  dev.off()
  
  par(mfcol =1 c(1,2))
  par(mfcol =1, c(2,1))
  
  #Y ~ X notation: Y is a function of X
  plot(Y~X)
  
plot(mpg$hwy, mpg$cty)








--------------------------------------------------------------------------------
  
# Descriptive Statistics
#Exploratory Data Analysis (EDA)
  #1. Central Tendency
  #2. Variation
  #3. Shape
  
  #CENTRAL TENDENCY
cdc= read.csv("cdc.csv")
View(cdc)
  
#Central Tendency: Just one single number to give you an idea about dataset
#Mean: Average value in a dataset. mean= Sum of values/ total number of values

#1. what is the avg height and weight?
meanH= mean(cdc$height)
meanW= mean(cdc$weight)

#2. what is the median height and weight?

medianH = median(cdc$height)
medianW = median(cdc$weight)

#3. what is the mode in the genh1th variable?

table(cdc$genhlth)                     ---###"function for mode"
names(sort(-table(cdc$genhlth)))[1]
                                       ----###use this for sorting the functions out
names(sort(table(cdc$genhlth)))[5]    

#std.deviatoin

sd(cdc$height)
              ------standard deviation
sd(cdc$height)

var(cdc$height)
var(cdc$weight)

#Compare variation between height and weight

CVH =sdH/meanH
CVW= sdW/meanW

c (CVH, CVW)

#Range- gives the idea of the distance between highest and lowest values

#what is the range of the height variable

range(cdc$height)




