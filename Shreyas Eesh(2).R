# -------------------------------------------------
# Homework
# Answer the following questions.
# Write your code in R below each question.
# -------------------------------------------------

# For this assignment, you will use a built-in dataset already stored in R called "mtcars"
# This is about Motor Trend Car Road Tests.
# First run the following two lines of code to load the dataframe into memory.
# Name of the dataframe is mtcars.

data("mtcars")
View(mtcars)





#You dont need to use mtcars for first 2 questions.
# Questions

#1) Create a vector lists numbers from 0 to 100 and assigned it to variable Q1. 
Q1 = 0:100
Q1

#2) Create a vector using all the numbers in Q1 except number 99 and assign the new vector to variable Q2.
Q2 = Q1[-100]
Q2

#3)Provide the dataframe locations that lists hp for Merc 280C. (e.g mtcars[x,y])
mtcars[10,4]

#4) List miles per galon (mpg) of the cars from 3rd car to 5th car.
mtcars$mpg[3:5]



