set.seed(42)
library(Metrics)
#regression metrics
y = rnorm(n=10, mean = 10, sd=2)
y
#use random numbers AS predictions
y_hat = rnorm(n=10, mean = 10.5, sd =2.2)
y_hat
rmse(actual= y, predicted=y_hat)
