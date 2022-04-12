# APMA 6430 Homework 1: Descriptive Statistics (Devore Ch 1)(Verzani Ch1&2)

##############################################################
# Problem 1. Visualizing Data Using Box Plots

# To get started, import crime data by state for the United States by running the following line of code 

crime.new <- read.csv("http://datasets.flowingdata.com/crimeRatesByState-formatted.csv")

# Note that the data set has a row for every state and a column for different crimes, 
# such as murder, robbery, and motor vehicle theft.

head(crime.new)

# Now, remove the row that represents national averages so we can focus on data 
# for individual states:



# Remove national averages

# Answer.
# This can be done in a couple of ways
crime.new1 = crime.new[-1,]   # remove the first row

# or

crime.new2 <- crime.new[crime.new$state != "United States ",] 
# remove the row labeled "United States", in this case you do not need to know it is the first one.

# We can check that the two outputs are the same with 
  
all(crime.new1 == crime.new2)
  

   
# [5 pts] Make a boxplot of the Robbery Rates in the United States.
  
 
boxplot(crime.new1$robbery)
  
  
# Part 2
# [5 pts] A very useful functionality of R is to make box plots for every column of a dataset. 
# In this example, make a boxplot for every column of crime.new, excluding the 
# first (it’s comprised of non-numeric state names). Write the code in the 
# space below:

# Remove the first column
crime.new = crime.new1[,-1]

# Boxplot
boxplot(crime.new)
    
  
  
# Your plot should look like the picture attached to HW1
  
  
  
############################################################  
############################################################
# Install the package UsingR and solve [6 pts each]
# Verzani Problem 1.8, 1.9, 2.7, 2.8, 2.12, 2.17, 2.19, 2.23, 2.28, 2.38 
# 
#
#