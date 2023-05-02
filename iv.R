setwd('C:/Users/DELL/Desktop/R')
FILE_3 <- read.csv("3-01_2021.csv")
install.packages("lubridate")
library(lubridate)
attach(FILE_3)
##################################################################################################
#IV.1.

Date_4 <- FILE_3[671:1570,]
Date_44 <-Date_4[Date_4$deviceid=="\"SS0866977441458415\"",]
attach(Date_44)
Date_4f33 = ggplot(data=Date_44, aes(x=hour(date), y=Temp))
Date_4f33  + geom_line(aes(col=deviceid)) +labs(title = "", subtitle ="Ng?y 04-01-2021",x = "Th???i gian(gi???)",y = "Temp") + theme_bw()

Date_4 <- FILE_3[671:1570,]
Date_44 <-Date_4[Date_4$deviceid=="\"SS0866974771458415\"",]
attach(Date_44)
Date_4f33 = ggplot(data=Date_44, aes(x=hour(date), y=Temp))
Date_4f33  + geom_line(aes(col=deviceid)) +labs(title = "", subtitle ="Ng?y 04-01-2021",x = "Th???i gian(gi???)",y = "Temp") + theme_bw()

Date_6 <- FILE_3[760:1218,]
Date_66 <-Date_6[Date_6$deviceid=="\"SS0866977441458415\"",]
attach(Date_66)
Date_6f33 = ggplot(data=Date_66, aes(x=hour(date), y=Temp))
Date_6f33  + geom_line(aes(col=deviceid)) +labs(title = "", subtitle ="Ng?y 06-01-2021",x = "Th???i gian(gi???)",y = "Temp") + theme_bw()

Date_6 <- FILE_3[760:1218,]
Date_66 <-Date_6[Date_6$deviceid=="\"SS0866974771458415\"",]
attach(Date_66)
Date_6f33 = ggplot(data=Date_66, aes(x=hour(date), y=Temp))
Date_6f33  + geom_line(aes(col=deviceid)) +labs(title = "", subtitle ="Ng?y 06-01-2021",x = "Th???i gian(gi???)",y = "Temp") + theme_bw()
#########################################################################################################################################
#IV.2

Date_4f3<-FILE_3[1:158,]
attach(Date_4f3)
Date_4f33 = ggplot(data=Date_4f3, aes(x=hour(date), y=Humi))
Date_4f33 + geom-point(aes(col=deviceid)) +labs(title = "", subtitle = "Ng?y 04-01-2021",x = "Th???i gian(gi???)",y = "Humi") + theme-bw()

Date_6f3<-FILE_3[760:1218,]
attach(Date_6f3)
Date_6f33 = ggplot(data=Date_6f3, aes(x=hour(date), y=Humi))
Date_6f33 + geom-point(aes(col=deviceid)) +labs(title = "", subtitle = "Ng?y 06-01-2021",x = "Th???i gian(gi???)",y = "Humi") + theme-bw()
##############################################################################################################################################
#IV.3

Date_4f333 = ggplot(data=Date_4f3, aes(x=Humi, y=Temp))
Date_4f333 + geom_point(aes(col=deviceid))+labs(title = "", subtitle = "Ng?y 04-01-2021",x =" Humi",y = "Temp")+ theme_bw()

Date_6f333 = ggplot(data=Date_6f3, aes(x=Humi, y=Temp))
Date_6f333 + geom_point(aes(col=deviceid))+labs(title = "", subtitle = "Ng?y 06-01-2021",x =" Humi",y = "Temp")+ theme_bw()
###############################################################################################################################################
#IV.4.

attach(FILE_3)
tansof333<- table(as.Date(date))
tansof3333<-data.frame(tansof333)
tansof3333
filter_data4<-tansof3333[tansof3333$Var1 == "2021-01-04",]
filter_data4filter_data6<-tansof3333[tansof3333$Var1=="2021-01-06",]
filter_data6tanso_result <- merge(filter_data4,filter_data6, all=TRUE)
tanso_resultggplot(data=tanso_result, aes(y=result$Freq, x=result$Var1)) +geom_bar(stat="identity", width=0.5, fill="blue") + theme_bw()
#####################################################################################################################################################
#IV.5.
attach(FILE_3)
x1 <- table(as.Date(date))
x1<-data.frame(x1)
x2<-rep(1,28)
for(i in 1:28)
{x2[i] <- x1$Freq[i]}
for(i in 1:28)
{x2[i+1] = x2[i+1] + x2[i]}
x3<-data.frame(x1$Var1)
x2<-data.frame(x2)
x2<-x2[-c(29),]
Tanso_tichluy<- cbind(x3,x2)
Bieu_do_tan_so<-ggplot(data=Tanso_tichluy, aes(x=as.Date(Tanso_tichluy$x1.Var1), y = x2))
Bieu_do_tan_so + geom_line(col="red", size=1.2) + labs(x="Ng?y", y="T???n s???")+ theme_bw()
###############################################################################################################
#IV.6 (FILE 3 + FILE 4 + FILE 5)
data <- read.csv("3-01_2021.csv")
data <- read.csv("4-03_2021.csv")
data <- read.csv("5-04_2021.csv")
data_d = data
data_d = data[data$deviceid == "\"SS0866974771458415\"",]#1
data_d = data[data$deviceid == "\"SS0866977441458415\"",]#2
data_d = data[data$deviceid == "\"SS0466973631458415\"",]#3
library("dplyr", lib.loc="C:/Program FILEs/R/R-4.1.1/library")
library("lubridate", lib.loc="C:/Program FILEs/R/R-4.1.1/library")
hala<-boxplot.stats(data_d$Temp)$out
check<-data.frame(hala)
result_time<-data_d%>%filter(data_d$Temp %in% check$hala)
new<-hour(result_time$date)
hala<-data.frame(new)
vamos<-data.frame(hala)
hist(vamos$new, xlim=c(6,20),breaks=6,col="red",main="Ph??? gi??? Outliers",xlab="Gi???")