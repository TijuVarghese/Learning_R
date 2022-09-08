2*pt(-2.43,df=13)
qf(0.01,2,7,lower.tail = FALSE)
#stem&leaf plot
attach(faithful)
summary(eruptions)
fivenum(eruptions)
stem(eruptions)
#histogrm
hist(eruptions)
hist(eruptions,seq(1.6,5.2,0.2),prob=TRUE)
lines(density(eruptions,bw=0.1))
rug(eruptions)
#EDF
plot(ecdf(eruptions),do.points=FALSE, verticals = TRUE)
#fit a normal distribution & the fitted CDF
long <- eruptions[eruptions>3]
plot(ecdf(long),do.points=FALSE, verticals=TRUE)
x <- seq(3,5.4,0.01)
lines(x, pnorm(x, mean=mean(long),sd=sqrt(var(long))),lty=3)
#qq plot
par(pty='s')
qqnorm(long); qqline(long)
#shapiro-wilk normality test
x<- rt(250,df=5)
qqnorm(x);qqline(x)
qqplot(qt(ppoints(250), df=5),x,xlab="Q-Q plot for t dsn")
qqline(x)
shapiro.test(long)


