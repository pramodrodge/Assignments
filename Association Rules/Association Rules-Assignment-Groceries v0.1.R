#Include the library arules for Apriori algorithm
library(arules)
library(rmarkdown)
#Include the library arulesViz for matrix package
library(arulesViz)


Groceries_data<-read.csv(file.choose(),)
View(Groceries_data)
#str(Book_data)

summary(Groceries_data)

#Applying appriori algorithm on the Groceries data
View(Groceries_data)
#1st rule
#Groceries_rules <- apriori(Groceries_data,parameter = list(support = 0.05,confidence = 0.4,minlen=3))
#2nd rule
#Groceries_rules <- apriori(Groceries_data,parameter = list(support = 0.02,confidence = 0.5,minlen=2))

#3rd rule
#Groceries_rules <- apriori(Groceries_data,parameter = list(support = 0.04,confidence = 0.6,minlen=3))

#4th rule
#Groceries_rules <- apriori(Groceries_data,parameter = list(support = 0.03,confidence = 0.5,minlen=3))

#5th rule
Groceries_rules <- apriori(Groceries_data,parameter = list(support = 0.01,confidence = 0.3,minlen=3))

inspect(Groceries_rules)
#List out those books which are with higher lift ratio.
inspect(head(sort(Groceries_rules, by = "lift")))
#1st plot 
plot(Groceries_rules)
#2nd plot
plot(Groceries_rules,method = "grouped")
#3rd plot
plot(Groceries_rules,method = "graph")
#4th plot
plot(Groceries_rules,method = "")
??plot
