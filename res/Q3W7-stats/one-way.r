# One-way ANOVA

# Importing data from spreasheet
data <- read.csv("one-way.csv")

attach(data)

data$Economics <- as.numeric(data$Economics)
data$Medicine <- as.numeric(data$Medicine)
data$History <- as.numeric(data$History)

stack <- stack(data)

# Cleans up and remove 0 in the stack
stack <- stack[ -c(17:18), ]

# Perform anova on the stacked dataframe
results <- aov(values ~ ind, stack)
summary(results)
