# Homework

# Answer the following questions using the cdc dataset
d=read.csv("cdc.csv")
View(d)

# Assume that the weight variable in the dataset is nearly Normal.

# If we pick up a row randomly from this dataset,
# what is the probability that:
mu = mean(d$wtdesire)    
sigma = sd(d$wtdesire)  
c(mu, sigma)

# 1) weight desired is less than 150?
z = (150 - mu)/sigma 
pnorm(z)  #0.4367885

pnorm(150, mu, sigma)

# 2) weight desired is greater than 150?
1-pnorm(150, mu, sigma)  #0.5632115

# 3) weight desired is between 140 and 180?
pnorm(180,mu,sigma) - pnorm(140,mu,sigma) #0.463067

# 4) To be in the top 20% for females, what is the cutoff height ?
mu_hgt = mean(d$height)
sigma_hgt = sd(d$height)
qnorm(0.20,mu_hgt,sigma_hgt ) #63.71041


# 5) In a manufacturing facility, a particular bolt is made using a machine.
# Due to uncontrolable factors, each bold is slightly different from each other,
# which is acceptable unless they are unusually smaller or bigger.
# The quality control manager takes a sample every day to make sure that the machine
# is working fine and the bolts are good.
# The following data is from the last sample. Construct a confidence interval 
# at 95% confidence level for the diameter of the bolt.

# sample mean: xbar = 29.8 mm
# sample std dev: s = 1.2 mm
# sample size: n = 40
z = abs(qnorm(0.05/2))

lowestLimit = xbar - (z * s)/sqrt(n)
highestLimit = xbar + (z * s)/sqrt(n)

c(lowestLimit, highestLimit) 

#confidence interval at 95% confidence level for the diameter of the bolt is between (29.42812, 30.17188)



# 6) A market researcher for a consumer electronics company wants to study the
# television viewing habits of residents of a particular area. The market researcher
# takes a random sample of 100 televison viewers in the area who are instructed to keep
# a detailed record of all television viewing in a particular week.
# The results from this sample are as follows: 

#  Average viewing time per week: xbar = 15.3 hours
#  Standard deviation of the viewing time: s = 3.5 hours

# Construct a 99% confidence interval for the population viewing time per week.

z = abs(qnorm(0.01/2))

lowestLimit = xbar - (z * s)/sqrt(n)
highestLimit = xbar + (z * s)/sqrt(n)

c(lowestLimit, highestLimit)

# 99% confidence interval for the population viewing time per week is between (14.39846, 16.20154)







