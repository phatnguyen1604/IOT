getwd()
setwd("E:/DOCUMENT/second year/sem1/Cau truc roi rac/BTL/BTL1")
data <- read.csv("3-01_2021.csv")
data <- read.csv("4-03_2021.csv")
data <- read.csv("5-04_2021.csv")
data_d = data
data_d = data[data$deviceid == "\"SS0866974771458415\"",]#1
data_d = data[data$deviceid == "\"SS0866977441458415\"",]#2
data_d = data[data$deviceid == "\"SS0466973631458415\"",]#3
#--------------------------------cau1,2------------------------------------#
date_new = substr(data_d$date,1, 10)
clock= substr(data_d$date,12,30)
date_new = as.Date(date_new,format = " %Y-%m-%d")
class(date_new)
data_d = cbind(data_d, date_new)
data_d = cbind(data_d, clock)
library("ggplot2", lib.loc="C:/Program Files/R/R-4.1.1/library")
data_graph = subset(data_d, data_d$date_new == "2021-01-06")
attach(data_graph)
p1 = ggplot(data = data_graph, aes(x = clock, y = Humi))
p1 + geom_point(aes(col = deviceid)) + xlab("Ngày 01-06-2021")+theme_classic()
#--------------------------------cau3------------------------------------#
library("dplyr", lib.loc="C:/Program Files/R/R-4.1.1/library")
library("lubridate", lib.loc="C:/Program Files/R/R-4.1.1/library")

hala<-boxplot.stats(data_d$Temp)$out
check<-data.frame(hala)

result_time<-data_d%>%filter(data_d$Temp %in% check$hala)
new<-hour(result_time$date)
hala<-data.frame(new)

vamos<-data.frame(hala)
hist(vamos$new, xlim=c(2,20),breaks=10,col="red",
     main="Ph??? gi??? Outliers",xlab="Gi???")
