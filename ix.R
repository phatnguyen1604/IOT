
#IX.2

Table_day_f3<-table(as.Date(date))
Sort_day_f3<-data.frame(cbind(Table_day_f3))
Sort_day_f3date_f3<- c(4:31)
date_f3Data_check<-data.frame(date_f3, Sort_day_f3$Table_day_f3)
Data_check

Result<-aov(Table_day_f3 ~ date_f3)
summary(Result)
######################################################################################################
#IX.6
attach(FILE_3)
summary(Humi)

Min_Humi_f3 <- FILE_3[FILE_3$Humi==22.8,2]
Max_Humi_f3 <- FILE_3[FILE_3$Humi==98.1,2]
Median_Humi_f3 <- FILE_3[FILE_3$Humi==77.2,2]
Mean_Humi_f3 <- FILE_3[FILE_3$Humi==70.0,2]
head(Min_Humi_f3)

summary(Temp)
Min_Temp_f3 <- FILE_3[FILE_3$Temp==8.70,2]
Max_Temp_f3 <- FILE_3[FILE_3$Temp==42.00,2]
Median_Temp_f3 <- FILE_3[FILE_3$Temp==18.80,2]
Mean_Temp_f3 <- FILE_3[FILE_3$Temp==20.78,2]
#####################################################################################################
