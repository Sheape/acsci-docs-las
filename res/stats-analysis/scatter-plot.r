# Statistical tool: Scatter Plot

# Importing csv file
scatter_plot.data <- read.csv("scatter-plot.csv", header=T, stringsAsFactors = FALSE)
scatter_plot.data$Temperature..C <- as.numeric(gsub("°", "", scatter_plot.data$Temperature..C))
scatter_plot.data$Ice.Cream.Sales <- as.numeric(gsub("[$),]", "", scatter_plot.data$Ice.Cream.Sales))

scatter_plot.data

# Importing ggplot2 library to show graphs
# and visualize scatter plot 
library(ggplot2)

ggplot(scatter_plot.data, aes(x = Temperature..C, y = Ice.Cream.Sales)) + geom_point() + stat_smooth(method="lm", col="#c34864", se = FALSE, size = 1)

