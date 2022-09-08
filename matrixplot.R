#matrixplot

a<-pairs(airquality,col="darkgreen",pch=18)

head(iris)
pairs(iris[,1:4],pch=19)
pairs(iris[,1:4],pch=19,lower.panel=NULL)

mycols<-c("blue","green","red")
pairs(iris[,1:4],pch=19,cex=0.5,col=mycols[iris$Species],lower.panel=NULL)

