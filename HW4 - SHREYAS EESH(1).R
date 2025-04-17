d = read.csv("WestRoxbury.csv")
View(d)
getwd()
library(dplyr)

# Questions

# 1) Show property's total value, tax, lot sqft, and year built 
# for houses whose total value is greater than 300 (thousand), 
# age is less than 20 years old, 
# and tax is less than 6000. 
# HINT: Calculate the AGE of the house as of 2022.

d$AGE = 2022 - d$YR.BUILT


filtered_properties = d[
  d$TOTAL.VALUE > 300 &
    d$AGE < 20 &
    d$TAX < 6000,
  c("TOTAL.VALUE", "TAX", "LOT.SQFT", "YR.BUILT")
]

print(filtered_properties)


# 2) Calculate value per square foot using the formula
#    SQFT.VALUE = total value / lot sqft.
#    Then, sort the dataset by SQFT.VALUE, then show
#    only sqft value, yr built, gross area and rooms. Assign entire
#    output to a variable named sortedD. View it.

d$SQFT.VALUE = d$TOTAL.VALUE/d$LOT.SQFT

sortedD = d[order(d$SQFT.VALUE),]
sortedD = sortedD[, c("SQFT.VALUE", "YR.BUILT", "GROSS.AREA", "ROOMS")]
View(sortedD)



# 3) A potential buyer is looking for a house which will have at least 6 rooms,
# in exactly one floor, have at least one fireplace, and built in between 1970 and 1990.
# Filter these houses first. Then, arrange them by yr built and total value. 
# Finally, assign the result to a new variable named myList.
# View myList.

filtered_houses = d[
  d$ROOMS >= 6 &
    d$FLOORS == 1 &
    d&FIREPLACE >= 1 &
    d$YR.BUILT >= 1970 &
    d$YR.BUILT <= 1990,
]

mylist = filtered_houses[order(filtered_houses$YR.BUILT, filtered_houses$TOTAL.VALUE), ]
View(mylist)

# 4) Mutate age variable again. Then, group by age, and then summarize by calculating
# count of each group, mean, min, and max of total value.
# Finally, assign the result to a new variable named groupedD.
# View groupedD.

d$AGE = 2022 - d$YR.BUILT

groupedD = d%>%
  group_by(AGE) %>%
  summarize(
    Count = n(),
    Mean_Total_value = mean(TOTAL.VALUE),
    Min_Total_Value = min(TOTAL.VALUE),
    Max_Total_Value = max(TOTAL.VALUE)
  )

View(groupedD)
