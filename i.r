setwd("E:/DOCUMENT/second year/sem1/Cau truc roi rac/BTL/BTL1")
data <- read.csv("3-01_2021.csv")
data <- read.csv("4-03_2021.csv")
data <- read.csv("5-04_2021.csv")
data_d = data[data$deviceid == "\"SS0866974771458415\"",]
data_d = data[data$deviceid == "\"SS0866977441458415\"",]
data_d = data[data$deviceid == "\"SS0466973631458415\"",]
#--------------cau1-------------------#
table(data$deviceid)
#--------------cau2-------------------#
data_d$data
#--------------cau3-------------------#
table(data_d$deviceid)
length(data_d$deviceid)
#--------------cau4-------------------#
data_d  = data

date_new = substr(data_d$date,1, 10)
date_new = as.Date(date_new,format = " %Y-%m-%d")
table(date_new)
#--------------cau5-------------------#
data_d = data[data$deviceid == "\"SS0866974771458415\"",]#1
data_d = data[data$deviceid == "\"SS0866977441458415\"",]#2
data_d = data[data$deviceid == "\"SS0466973631458415\"",]#3
date_new = substr(data_d$date,1, 10)
date_new = as.Date(date_new,format = " %Y-%m-%d")
table(date_new)
#--------------cau6,7-----------------#
data_d = data[data$deviceid == "\"SS0866974771458415\"",]#1
data_d = data[data$deviceid == "\"SS0866977441458415\"",]#2
data_d = data[data$deviceid == "\"SS0466973631458415\"",]#3
date_new = substr(data_d$date,1, 10)
date_new = as.Date(date_new,format = " %Y-%m-%d")
table(date_new)
#--------------cau6-------------------#
which.min(table(date_new))
min(table(date_new))
#--------------cau7-------------------#
which.max(table(date_new))
max(table(date_new))
#--------------cau8-------------------#
data_d  = data
date_new = substr(data_d$date,1, 10)
date_new = as.Date(date_new,format = " %Y-%m-%d")
table(date_new)
#--------------cau9-------------------#
table(date_new)
#--------------cau10-------------------#
library(dplyr)
data <- read.csv("3-01_2021.csv")
data <- read.csv("4-03_2021.csv")
data <- read.csv("5-04_2021.csv")
data_d = data[data$deviceid == "\"SS0866974771458415\"",]
data_d = data[data$deviceid == "\"SS0866977441458415\"",]
data_d = data[data$deviceid == "\"SS0466973631458415\"",]
count_devices=data.frame(table(data_d$deviceid))
l=data.frame(data_d%>%select(date,deviceid,Temp,Humi))
l$date=strptime(l$date,"%Y-%m-%d %H:%M:%S")
tuan1=l%>%filter(as.integer(format(as.Date(date),"%d"))>=1 & as.integer(format(as.Date(date),"%d"))<=7)
tuan2=l%>%filter(as.integer(format(as.Date(date),"%d"))>=8 & as.integer(format(as.Date(date),"%d"))<=14)
tuan3=l%>%filter(as.integer(format(as.Date(date),"%d"))>=15 & as.integer(format(as.Date(date),"%d"))<=21)
tuan4=l%>%filter(as.integer(format(as.Date(date),"%d"))>=22 & as.integer(format(as.Date(date),"%d"))<=28)
#--------------cau12-------------------#
data <- read.csv("3-01_2021.csv")
data <- read.csv("4-03_2021.csv")
data <- read.csv("5-04_2021.csv")
data_d = data
date_new = substr(data_d$date,1, 10)
date_new = as.Date(date_new,format = " %Y-%m-%d")
data_d = cbind(data_d, date_new)
data_d = data_d[data_d$"date_new" == "2021-01-06",]
data_d1 = data_d[data_d$deviceid == "\"SS0866974771458415\"",]#1
data_d2 = data_d[data_d$deviceid == "\"SS0866977441458415\"",]#2
data_d3 = data_d[data_d$deviceid == "\"SS0466973631458415\"",]#3
datelength <- c(length(data_d1$deviceid), length(data_d2$deviceid), length(data_d3$deviceid))
min(datelength)
which.min(datelength)
#--------------cau13-------------------#
datelength <- c(length(data_d1$deviceid), length(data_d2$deviceid), length(data_d3$deviceid))
max(datelength)
which.max(datelength)

