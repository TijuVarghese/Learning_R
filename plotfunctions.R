x<-c(10,20,30)
y<-c(300,400,200)
plot(x,y)

plot(1,3)

plot(c(1,8),c(3,10))

plot(c(1,2,3,4,5),c(3,7,8,9,12))

plot(1:10)

plot(1:10,type="l")

x<-seq(-pi,pi,0.1)
plot(x,sin(x))

plot(1:10,main="mygraph",xlab="the x axis",ylab="the y axis")

plot(x,sin(x),main="the sine function",ylab="sin(x)")

plot(x,sin(x),main="the sine function",ylab="sin(x)",type="l",col="blue")

plot(x,sin(x),main="the sine function",ylab="sin(x)",type="o",col="blue")

plot(x,sin(x),main="the sine function",ylab="sin(x)",type="h",col="blue")

plot(x,sin(x),main="the sine function",ylab="sin(x)",type="n",col="blue")

plot(x,sin(x),main="overlaying graphs",ylab="",type="l",col="blue")
lines(x,cos(x),col="red")

legend("bottomright",c("sin(x)","cos(x)"),fill=c("blue","red"))

plot(1:10)
plot(1:10,cex=2)
plot(1:10,pch=25,cex=2)
plot(1:10,pch=20,cex=2)


x=seq(2,10,0.1)                                
y1=x^2
y2=x^3
plot(x,y1,type="l",col="red")
plot(x,y2,col="green")
legend("bottomright",inset=0.05,c("Squares","cubes"),lty=1,col=c("red","green"),title="graphtype")


rainfall<-c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall.timeseries<-ts(rainfall,start=c(1012,1),frequency=12)
print(rainfall.timeseries)
plot(rainfall.timeseries)
