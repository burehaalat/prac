library("FactoMineR")
library("factoextra")

x=read.csv("C:/Users/swara/Desktop/marks.csv")
x
cm=cov(x)
cm
ex=eigen(cm)
ex
dp=PCA(x,ncp=3,graph=TRUE)
dp
dp$eig
dp$var
fviz_eig(dp,addlabels=TRUE,ylim=c(0,50))




head(iris)
x=iris[,-5]
x
cm2=cov(x)
cm2
ip=PCA(x,graph=TRUE)
summary(ip)
