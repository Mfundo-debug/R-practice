#use bootstrap to construct a 95% CI for the population variance of a gaussian distributed random variable
set.seed(42)
B = 1000
n = 1000
mu = 2.5
var = 1.6
alpha = 0.95
z_alpha = qnorm((1+ alpha)/2)
var_sample = rep(0,B)
for (i in 1:B) {
  x = rnorm(n, mu, sqrt(var))
  var_sample[i] = sum((x-mean(x))^2)/(n-1)
}
quantile(var_sample, c((1-alpha)/2, (1+alpha)/2))
