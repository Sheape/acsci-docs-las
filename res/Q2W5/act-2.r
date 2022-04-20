# Pie chart for activity 2
#
# Number of attendance in COVID-19
# Webinars

numbers <- c("Never Attended", "Once Only", "2-4 times", "5-9 times", "10-15 times")
data <- c(1, 40.6, 53.9, 3.6, 0.7)
percentage <- paste(round(data/sum(data)*100))
lbls <- paste(numbers, percentage)
lbls <- paste(lbls,"%",sep="")

lbls

pie(data, labels = "", col=c("cyan", "steelblue","orange","maroon","blue"), main="Number of Attendees in COVID-19 Webinars")
text(locator(5, type = "l"), lbls, pos = c(1, 1, 1, 1, 1))
