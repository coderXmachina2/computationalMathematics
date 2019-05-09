n <- 10^(1:3)
x <- 0:10

plot(x,x*0.03, main = "Limiting Process of the Binomial Distribution",type='n')
cols <- c("red","orange", "yellow", "green", "blue", "purple")
for(i in seq_along(n)){ 
  points(x,dbinom(x,n[i],4/n[i]),pch=16,col=cols[i]) 
  } 

points(x,dpois(x,4),type='l') 
legend("topright", legend=c("n=10, p=0.4","n=100, p=0.04", "n=1000, p=0.004","Poisson"), pch=c(16,16,16,NA),col=c(cols[seq_along(n)],"black"),lty=c(NA,NA,NA,1))

