x<-read.csv("C:/Users/enoch/Downloads/DS-main/DS-main/decisiontree/decisiontree/weather1.csv")
x

sam_weather=sample(nrow(x),.7*nrow(x))
xtr=x[sam_weather,]
xtr
xts=x[-sam_weather,]
xts

library(rpart)
library(rpart.plot)
dtrm=rpart(play.golf~.,data=xtr,method="class",control=rpart.control(minsplit=1,minbucket=1))
rpart.plot(dtrm)

p=predict(dtrm,xts,type="class")
table(xts$play.golf,p)

rpart.rules(dtrm)

xts

actuals_preds=data.frame(cbind(actuals=xts$play.golf, predicts=p))
actuals_preds

