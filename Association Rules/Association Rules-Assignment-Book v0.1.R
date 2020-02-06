#Include the library arules for Apriori algorithm
library(arules)
library(rmarkdown)
#Include the library arulesViz for matrix package
library(arulesViz)


Book_data<-read.csv(file.choose(),)
View(Book_data)
#str(Book_data)

summary(Book_data)

#head(Book_data@itemInfo,n=12)
#inspect(Book_data) - Gives list of all transactions
#inspect(Book_data[1:10])
#class(Book_data)
#inspect(tl)
# itemFrequencyPlot can be applicable only for transaction data 
# count of each item from all the transactions 
#itemFrequencyPlot(Book_data,topN=20)

#Applying appriori algorithm on the Books data
View(Book_data)
#Book_rules <- apriori(as.matrix(Book_data),parameter = list(support = 0.02,confidence = 0.5,minlen=3))
Book_rules <- apriori(as.matrix(Book_data),parameter = list(support = 0.05,confidence = 0.4,minlen=5))
#Book_rules <- apriori(as.matrix(Book_data),parameter = list(support = 0.03,confidence = 0.5,minlen=4))
#Book_rules <- apriori(as.matrix(Book_data),parameter = list(support = 0.02,confidence = 0.5,minlen=6))
#Book_rules<-apriori(Book_data,parameter = list(support = 0.02,confidence = 0.5,minlen=6))
inspect(Book_rules)
#List out those books which are with higher lift ratio.
inspect(head(sort(Book_rules, by = "lift")))
#1st plot 
plot(Book_rules)
#2nd plot
plot(Book_rules,method = "grouped")
#3rd plot
plot(Book_rules,method = "graph")
#4th plot
plot(Book_rules,method = "")
??plot
