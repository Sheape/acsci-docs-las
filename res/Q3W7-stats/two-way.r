#Statistical tool: Two-way anova

data <- read.csv("two-way.csv")

# Renaming columns
attach(data)

# Convert two columns to factors in two-way anova
# Class and Age as the factors to the group
data$Class <- as.factor(data$Class)
data$Age <- as.factor(data$Age)

# Perform two way anova with Class and age
# as factors
anova(aov(Group~Class*Age, data = data))
