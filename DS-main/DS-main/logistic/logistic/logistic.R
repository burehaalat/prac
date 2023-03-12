x<-read.csv("C:/Users/asus/OneDrive/Desktop/DS/weather3.csv")
x

#PRINTING THE DATASET
x$RainTomorrow<-ifelse(test=x$RainTomorrow=="Yes", yes=1, no=0)
x

#PARTIONING DATASET
s=sample(nrow(x),.6*nrow(x))
x_tr=x[s,]
x_ts=x[-s,]
nrow(x)
nrow(x_tr)  
nrow(x_ts)

#DATA MODELLING
lmod=glm(RainTomorrow~WindGustDir,data=x_tr,family=binomial,control=list( maxit=100))
lmod
#SUMMARY
summary(lmod)

#PREDICTION
p=predict(lmod,x_tr,type="response")
p




'''
#SECOND DATASET
y<-read.csv("C:/Users/asus/OneDrive/Desktop/DS/grade.csv")
y

#PARTIONING DATASET
s=sample(nrow(y),.6*nrow(x))
x2_tr=y[s,]
x2_ts=y[-s,]
nrow(y)
nrow(x2_tr)  
nrow(x2_ts)

#DATA MODELLING
lmod2=glm(Eval~Avg,data=x2_tr,family=binomial,control=list( maxit=100))
lmod2

#SUMMARY
summary(lmod2)

#PREDICTION
p=predict(lmod2,x2_tr,type="response")
p

prediction=ifelse(p>.5,1,0)
prediction

#PREDICTION MATRIX
x2_ts

#actuals predicted
ac=data.frame(cbind(actuals=x2_ts$Eval), predicteds=prediction)
ac

vif(lmod2)
'''
