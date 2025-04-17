print("Hello World")
# is only for comments 
#working directory
getwd()
mydata = read.csv("datasets/BreakfastCereals.csv")
View(mydata)
price = 34.99
quantity = 209
salesAmount = price * quantity
print(salesAmount)
salesAmount
taxRate = 0.08
studentFirstName = "John"
studentLastName = "Smith"
class(studentFirstName)
class(studentLastName)
str(price)
class(price)

#Vector variables - combine sata elements 
studentGrades = c(75, 88, 90, 70, 55, 92)
newStudentGrades = studentGrades + 2
studentGrades[3]
studentGrades[6]
newStudentGrades[2]
studentGrades[2:4]
studentGrades[c(2,3,4,1)]
studentStanding =c("Junior", "Junior", "Senior", "Somphomore", "Fresherman")
studentStanding[c(1,2,3)]
bonusPercent = 0.10
newStudentGrades = studentGrades * (1 + bonusPercent)
newStudentGrades
subtract = c(0, 0, 0, 0, 0, 1.2)
multinewStudentScore = newStudentGrades - subtract
multinewStudentScore
newStudentGrades[5]
newStudentGrades[-5]
passingGradStudents = newStudentGrades[-5]
passingGradStudents
newStudentGrades[c(-4, -5)]
newStudentGrades = newStudentGrades[c(-4, -5)]
newStudentGrades
