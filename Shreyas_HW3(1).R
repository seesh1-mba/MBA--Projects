# -------------------------------------------------
# Homework
# Answer the following questions.
# Write your code in R.
# Run the code to see it really works.
# -------------------------------------------------

# For this assignment, you will use a built-in dataset already stored in R called "mtcars"
# This is about Motor Trend Car Road Tests.
# First run the following two lines of code to load the dataframe into memory.
# Name of the dataframe is mtcars.

data("mtcars")
View(mtcars)


# 1) List hp and qsec of all 5-gear cars.
mtcars[mtcars$gear==5,c("hp", "qsec")]



# 2) List all columns of cars whose mpg is less than or equal to 20, 
#    cyl is greater than 4, and hp is less than or equal to 150.
mtcars[mtcars$mpg<=20 & mtcars$cyl>4 & mtcars$hp<=150, ]



# 3) List all columns of cars whose carb is not 1, wt is less than 3.2 
#    and disp is greater than 200. 
mtcars[mtcars$carb!=1& mtcars$wt<3.2&mtcars$disp>200, ]



# 4) List all columns of cars whose carb is 2 or 4.
mtcars[mtcars$carb==2 | mtcars$carb==4, ]



# 5) Which of the following has a higher average mpg? Cars with 4 cylinders,
#    or cars with 6 cylinders?
Carswith4cylinders= mtcars[mtcars$cyl==4, "mpg"]
Carswith6cylinders= mtcars[mtcars$cyl==6, "mpg"]

mean(Carswith4cylinders)
mean(Carswith6cylinders)

#Average mpg of Carswith4cylinders is 26.66364
#Average mpg of Carswith6cylinders is 19.74286
#Carswith4cylinders has higher avg of 26.66364










