# Statistical tool: Correlation

# Importing csv file
correlation.data <- read.csv("correlation.csv")
correlation.data <- correlation.data[ -c(6:11), ]

correlation.data$X <- as.numeric(correlation.data$X)
correlation.data$Y <- as.numeric(correlation.data$Y)
correlation.data$Z <- as.numeric(correlation.data$Z)

# Perform correlation
correlation.data <- data.frame(correlation.data$X, correlation.data$Y, correlation.data$Z)

cor(correlation.data)

# Importing corrplot library to show graphs
# and visualize scatter plot with correlation

# Uncomment if you don't have this package installed.
# install.packages('corrplot')
library("corrplot")

corrplot(cor(correlation.data), method = "color")
