studentID = c(101,102,103,104,105,106,107,108)
studentGender = c("M","F","F","M","F","M","M","F")
studentAge = c(18,18,17,21,20,20,19,17)
studentStanding = c("Junior", "Junior", "Senior", "Sophomore", "Freshman",
                    "Junior", "Freshman",  "Junior")
studentGrades = c(82.5, 96.8, 99.0, 100.0, 85.0, 78.0, 92.0, 55.0)

studentDF = data.frame(studentID, studentGender, studentAge, studentStanding, studentGrades )

View(studentDF)
studentDF[5,]
studentDF[,3]
studentDF[ , "studentAge"]
studentDF[2,4]
studentDF[ ,2:4]
studentDF[,c(2,3,4)]
studentDF[,c(1,3,5)]
studentDF[,c("studentID","studentGender","studentGrades")]
studentDF[3:7, "studentAge"]
studentDF[c(3,4,5,6,7), "studentAge"]
studentDF[c(2,5,7), c("studentID","studentGender","studentGrades")]

##data filtering 

condition = studentDF[,"studentGrades"] >80
studentDF[condition,]

studentDF[studentDF$studentGrades>80, ]

studentDF[studentDF$studentAge>=20 ,c(1,3,5)]
studentDF[c(-5,-7),c(1,3,5)]
studentDF[-c(5,7),c(1,3,5)]

getwd()

d[d$rating>60, c("name","rating")]

d[d$rating<=50, c("name","rating")]

d[d$fat==0, c("name","calories","fat")]

d[d$fat==0|1, c("name","calories","fat")]

d[d$fat==0&d$calories==110, c("name","calories","fat")]
d[d$rating<55&d$calories<120, c("name","calories","rating")]

d[d$mfr!='k' & d$shelf<3 & d$rating>=60, c("name","calories","rating")]

cereal_rating = d[d$calories<100, "rating"]
cereal_rating
cereal_rating12 = d[d$calories>100, "rating"]
mean((cereal_rating))
mean(cereal_rating12)
age = c(24,56,78,NA,45,78)
mean(age, na.rm = TRUE)

is.na(d$potass)

sum(is.na(d$potass))
sum(is.na(d))

x = dim(d)
x
#multiply each value to get the data.frame
dim(d)[1]*dim(d)[2]
x[1]*x[2]

#percent of missing values 
sum(is.na(d))/(dim(d)[1]*dim(d)[2])

#imputing datas
meanPotass = mean(d$potass, na.rm = TRUE)
ceiling(meanPotass)

d[is.na(d$potass==TRUE, "potass")] =ceiling(meanPotass)

#changing the name of row and coloums 
