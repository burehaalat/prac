titanic<-read.csv("C:/Users/asus/OneDrive/Desktop/DS/titanic_train.csv")
titanic

#Deleting missing values
clean_titanic <- na.omit(titanic)
clean_titanic

#Replacing missing values
titanic$Age <- replace(titanic$Age,is.na(titanic$Age),0)
titanic$Age

#Imputing missing values
library(Hmisc)
titanic$Age <- impute(titanic$Age,mean)
titanic$Age

#Work with categorial variables
titanic$sex=factor(titanic$Sex)
titanic$sex

#Work with outliers
boxplot(titanic$Age)
outliers<-boxplot.stats(titanic$Age)$out
outliers
age<-titanic$Age[!titanic$Age %in% outliers]
age