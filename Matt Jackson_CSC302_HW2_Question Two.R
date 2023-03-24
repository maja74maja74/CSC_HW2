setwd('C:/Users/mjack/Downloads/Rscripts/DATA')
data = read.csv("C:/Users/mjack/Downloads/Rscripts/DATA/WorldCupMatches.csv", header = TRUE)
nrow(data) #2A
ncol(data) #2A
summary(data)
unique(data$City)
mean(data$Attendance, na.rm = TRUE)
aggregate(data$Home.Team.Goals, by=list(data$Home.Team.Name), FUN=sum)
install.packages('ggplot2')
library(dplyr)
data_grp_year = data %>% group_by(Year) %>%
  summarise(Avg.Attendance = mean(Attendance))
View(data_grp_year)
