setwd("E:/DOCUMENT/second year/sem1/Cau truc roi rac/BTL/BTL1")
data <- read.csv("3-01_2021.csv")
data <- read.csv("4-03_2021.csv")
data <- read.csv("5-04_2021.csv")
data_d1 = data[data$deviceid == "\"SS0866974771458415\"",]
data_d2 = data[data$deviceid == "\"SS0866977441458415\"",]
data_d3 = data[data$deviceid == "\"SS0466973631458415\"",]
#--------------cau123-------------------#
summary(data_d1)
summary(data_d2)
#cau 1#
max(data_d1[["Temp"]], na.rm = TRUE)
min(data_d1[["Temp"]], na.rm = TRUE)
max(data_d1[["Humi"]], na.rm = TRUE)
min(data_d1[["Humi"]], na.rm = TRUE)
max(data_d2[["Temp"]], na.rm = TRUE)
min(data_d2[["Temp"]], na.rm = TRUE)
max(data_d2[["Humi"]], na.rm = TRUE)
min(data_d2[["Humi"]], na.rm = TRUE)
max(data_d3[["Temp"]], na.rm = TRUE)
min(data_d3[["Temp"]], na.rm = TRUE)
#cau 2#
quantile(data_d1$Temp, na.rm = TRUE)
quantile(data_d1$Humi, na.rm = TRUE)
#cau 3#
mean(data_d1$Temp, na.rm = TRUE)
mean(data_d1$Humi, na.rm = TRUE)
#--------------cau4-------------------#
sd4 = data_d1$Temp
sd4 = data_d2$Temp
sd4 = data_d3$Temp
sd4 = data_d1$Humi
sd4 = data_d2$Humi
sd4 = data_d3$Humi
standd = sd(sd4, na.rm = TRUE)
standd
#--------------cau5-------------------#
qnt_dur = data_d1$Temp
qnt_dur = data_d1$Humi
qnt_dur = data_d2$Temp
qnt_dur = data_d2$Humi
qnt_dur = data_d3$Temp
qnt_dur = data_d3$Humi
qnt = quantile(qnt_dur, na.rm = TRUE)
qnt
outl_low = qnt["25%"] - 1.5*(qnt["75%"]-qnt["25%"])
outl_hig = qnt["75%"] + 1.5*(qnt["75%"]-qnt["25%"])
outliers_low = qnt_dur[qnt_dur<outl_low & is.na(qnt_dur) == 0]
outliers_high= qnt_dur[qnt_dur>outl_hig & is.na(qnt_dur) == 0]
outliers = length(outliers_high) + length(outliers_low)
outliers
#--------------cau7,8-----------------#
boxplot(data_d1$Temp, horizontal = TRUE)
boxplot(data_d2$Temp, horizontal = TRUE)
boxplot(data_d3$Temp, horizontal = TRUE)

boxplot(data_d1$Humi, horizontal = TRUE)
boxplot(data_d2$Humi, horizontal = TRUE)
boxplot(data_d3$Humi, horizontal = TRUE)
