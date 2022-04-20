# Statistical tool: Regression

# Importing csv file
regression.data <- read.csv("regression.csv")
regression.data$X <- as.numeric(regression.data$X)
regression.data$Y <- as.numeric(regression.data$Y)

# Perform regression
regression.result <- lm(regression.data$Y ~ regression.data$X) 
summary(regression.result)


# Importing ggplot2 library to show graphs
# and visualize scatter plot with regression
library(ggplot2)

ggplot(regression.data, aes(x = X, y = Y)) + geom_point() + stat_smooth(method="lm", col="#c34864", se = FALSE, size = 1)

