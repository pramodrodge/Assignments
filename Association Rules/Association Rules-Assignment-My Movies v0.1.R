#Include the library arules for Apriori algorithm
library(arules)
library(rmarkdown)
#Include the library arulesViz for matrix package
library(arulesViz)


Movies_data<-read.csv(file.choose(),)
View(Movies_data)

summary(Movies_data)

#Applying appriori algorithm on the Groceries data
View(Movies_data)
#1st rule - Actual data for association is available from 6th column onwards,
#hence we have the column specificiation - [,6:15]
#Movies_rules <- apriori(as.matrix(Movies_data[,6:15]),parameter = list(support = 0.02,confidence = 0.5,minlen=4))
#Movies_rules <- apriori(Movies_data,parameter = list(support = 0.05,confidence = 0.4,minlen=4))
#2nd rule
#Movies_rules <- apriori(as.matrix(Movies_data[,6:15]),parameter = list(support = 0.02,confidence = 0.4,minlen=3))

#3rd rule
#Movies_rules <- apriori(as.matrix(Movies_data[,6:15]),parameter = list(support = 0.05,confidence = 0.6,minlen=4))

#4th rule
#Movies_rules <- apriori(as.matrix(Movies_data[,6:15]),parameter = list(support = 0.02,confidence = 0.05,minlen=5))

#5th rule
Movies_rules <- apriori(as.matrix(Movies_data[,6:15]),parameter = list(support = 0.09,confidence = 0.3,minlen=4))

#List out those Movies which are with higher lift ratio.
inspect(head(sort(Movies_rules, by = "lift")))
#1st plot 
plot(Movies_rules)
#2nd plot
plot(Movies_rules,method = "grouped")
#3rd plot
plot(Movies_rules,method = "graph")
