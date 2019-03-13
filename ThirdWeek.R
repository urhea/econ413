#Visualization
#exploratory -> we explore the data 
#explanatory -> we explain the data

#you can basically do anything with ggplot2
#we either use vector or data frame to visualize

#DATA TABLE is an extension of data.frame and they are much faster, no big differences
#large objects are better shown in data table.
#FOCUS ON DATA TABLE

#data import then tidy it, transform it to a better shape, visualize it and
#model it then transformed form again visualize it, make it cooler

#how the data is collected, what is the source, who collected it
#know how the data is generated
#GRONINGEN DATA CENTER, NICE DATA FOR TURKEY
#how they get this info, what is the source
#before 2005, there is no data about Turkey, how they get?
#they might interpret. But what they did was, they used GREEK DATA for Turkey
#since they were similar
#OUTPUT of analysis depends on INPUT of analysis.

#Erol can ask anything about data, definitions
#Measurement also important

_____________

#Check missing values
#what is the source of outliers? They might be crisis
#data might be correct but observations/charachteristics can be wrong.
#you should check the distribution of DATA
#relationshıps
#knowledge about data


#DATA HANDLING
#we get from TUIK, gronıngen
#Reshape and clean the data(data errors, outliers, missing values, imputations)

#CLEANING the DATA?
missing values - do not underestimate
-code missing values explicity
-check all variables for missing values
-check 0,s
check basic statistics for all variables 
to understand the basic content
of then data then

check the distribution,  
outliers
skewed distribution
use bivariate, scatter plots, 
check logical inconsistency


#EXPLORATORY VISUALIZATION

#use as.integer for gender 1-2 or 1,0
#if it was male female

ggplot(dt, aes(x = exper)) + geom_histogram()

ggplot(dt, aes(x = exper)) + geom_density()

ggplot(dt, aes(x = exper)) + geom_density() +
  stat_function(fun = dnorm, args = list(mean = 0, sd = 1), col="blue") + 


dt$educ <- as.factor(dt$educ)

model2 <- lm(wage ~ educ + exper + educ*exper, data = subset(dt, gender == 1))
summary(model2)

#for each variable we should select a element

One graphical element for one variable
Position (x, y), length, area, color, shape, size, pattern, orientation, transparency

