# Descritive Statistics

# This library is required for kurtosis and skewness function.
library(moments)
scores <- c(82, 93, 91, 69, 96, 61, 88, 58, 59, 100, 93, 71, 78, 98)

mean(scores)
print(sd(scores)/sqrt(length((scores))))
median(scores)
scores[which.max(unique(scores))]
sd(scores)
var(scores)
kurtosis(scores)
skewness(scores)
range(scores)[2]-range(scores)[1]
min(scores)
max(scores)
sum(scores)
length(scores)
