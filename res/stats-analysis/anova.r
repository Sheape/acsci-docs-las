# Statistical tool: ANOVA

# Importing csv file
anova.data <- read.csv("anova.csv")
anova.data <- anova.data[ -c(16:18), ]
anova.data$Set.A <- as.numeric(anova.data$Set.A)

# Create a data frame and stack each columns
anova.dataframe <- data.frame(cbind(anova.data$Set.A, anova.data$Set.B, anova.data$Set.C))
anova.stacked <- stack(anova.dataframe)

# Perform the anova test
anova.results <- aov(values ~ ind, anova.stacked)
summary(anova.results)
