set.seed(30)
x = rnorm(10, mean = 0, sd =1)
x
mean(x)
sd(x)
#evaluate pdf
d = dnorm(x, mean = 0, sd = 1)
d
#evaluate cdf
p = pnorm(x, mean = 0, sd = 1)
p
#evaluate quantile
q = qnorm(p, mean = 0, sd =1)
q
#qnorm(pnorm(x)) =x
library(mvtnorm)
mu = c(1,2)
cov = array( 
  c(1.0, 0.5,0.5, 2.0), c(2,2))
x = rmvnorm(n=1, mean = mu, sigma = cov)
x
d = dmvnorm(x, mean = mu, sigma = cov)
d
p = pmvnorm(lower = -Inf, upper = x[1,], mean = mu, sigma =  cov)
p
#Inversing sampling
n = 1000
u = runif(n=n, min =0, max = 1)#step 1, draw from uniform distribution
lambda = 2.0 # step2, calculate the quantiles
x = qexp(u,rate = lambda)#the mean is close 1/lambda
mean(x)
#Rejection sampling
lambda1 = 1.0
b = 2.0
x = rep(0,n)
i=0
while (i<n) {
  y = rexp(n=1, rate = lambda1)
  if (y<=b){
    i = i+1
    x[i] = y
  }
  
}
#using rejection technique
while (i<n) {
  #sample from the proposal distribution
  y = runif(1, min = 0, max = b)
  #calculate the acceptance probability
  p= exp(-lambda1*y)
  if (runif(1)<=p){
    i = i+1
    x[i] = y
  }
  
}
