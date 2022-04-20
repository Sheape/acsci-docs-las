# Statistical tool: Welch T-test

# Importing csv file
ttest.data <- read.csv("t-test.csv")
ttest.data <- ttest.data[ -c(17:26), ]
ttest.data$Set.A <- as.numeric(ttest.data$Set.A)

# Perform Welch Two sample t-test
t.test(ttest.data$Set.A, ttest.data$Set.B)

