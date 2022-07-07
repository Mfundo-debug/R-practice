library(tidyverse)
view(airquality)
#An official claims that average wind speed in the city is 9 miles per hour is this plausible
qplot(airquality$Wind, geom = "histogram")
t.test(airquality$Wind, mu = 9)
#A certain solar array will only be cost-effective if mean solar radiation is over 175 langleys.
# would it be a sound investment in light of this data?
qplot(airquality$Solar.R, geom = 'histogram', bins=20)
t.test(airquality$Solar.R, mu=175, alternative = "greater")
#hypothesis for generic data
x <- c(85,92, 100, 95, 99)
mean(x)
var(x)
sd(x)
a <- t.test(x, mu=100,p.value = 0.05)
a$p.value
a$statistic
a$null.value
