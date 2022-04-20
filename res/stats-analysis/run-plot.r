# Statistical tool: Run Plot 

# Importing csv file
run_plot.data <- read.csv("run-plot.csv", header=T, stringsAsFactors = FALSE)
run_plot.data$Yield <- as.numeric(gsub("%", "", run_plot.data$Yield))

run_plot.data

# Importing ggplot2 library to show graphs
# and visualize scatter plot 
#library(ggplot2)

plot(run_plot.data$Yield, type="b")
	
#ggplot(run_plot.data, aes(x = Month, y = Yield)) + geom_line()
#stat_smooth(method="lm", col="#c34864", se = FALSE, size = 1)

