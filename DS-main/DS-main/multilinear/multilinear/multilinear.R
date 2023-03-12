# Multiple Linear Regression
 
# Importing the dataset
dataset <- read.csv("C:/Users/asus/OneDrive/Desktop/DS/data2.csv")
dataset
 
# Encoding categorical data
dataset$State <- factor(dataset$State,
			levels = c('New York', 'California', 'Florida'),
              	labels = c(1, 2, 3))
dataset$State

# Splitting the dataset into the Training set and Test set
#install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
training_set
test_set <- subset(dataset, split == FALSE)
test_set
 
# Feature Scaling
training_set <- scale(training_set)
test_set <- scale(test_set)
 
# Fitting Multiple Linear Regression to the Training set
regressor <- lm(formula = Profit ~ .,data = training_set)
regressor
 
# Predicting the Test set results
y_pred <- predict(regressor, newdata = test_set)
y_pred