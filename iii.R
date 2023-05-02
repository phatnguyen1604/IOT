library(dplyr)
library(ggplot2)
a=read.csv("Documents/5-04_2021.csv")
#loc theo thiet bi
sp1 <- filter(a, deviceid=='"SS0866974771458415"')
alo=sp1%>%select(date,deviceid,Temp,Humi)
sp2 <- filter(a, deviceid=='"SS0866977441458415"')
alo2=sp2%>%select(date,deviceid,Temp,Humi)
sp3 <- filter(a, deviceid=='"SS0466973631458415"')
alo3=sp3%>%select(date,deviceid,Temp,Humi)
##y1
#Tính giá trị phần lẻ nhỏ nhất của các giá trị thu thập đuọc
#alo$Temp - as.integer(alo$Temp) để tìm phần lẻ, min tim phan lo nho nhat
#drop_na loai bo gia tri NA
beta_1= min(alo$Temp - as.integer(alo$Temp))
beta_2= min(alo2$Temp - as.integer(alo2$Temp))
beta_5= min(alo3$Temp - as.integer(alo3$Temp))
beta_3= min((alo %>% drop_na(Humi))$Humi - as.integer((alo %>% drop_na(Humi))$Humi))
beta_4= min((alo2 %>% drop_na(Humi))$Humi - as.integer((alo2 %>% drop_na(Humi))$Humi))
##y2
#Đo khoản cách chênh lệch nhỏ nhất thu được nếu có thể sắp xếp xếp các giá trị 
#thu được theo nhiệt độ (Temp) và theo độ ẩm (Humi) từ nhỏ đến lớn
# order để sắp xếp 
#diff tìm chênh lệch
#min tìm chênh lệch nhỏ nhất
#drop_na loai bo gia tri NA
small_1=min(diff(alo[order(alo$Temp),]$Temp))
small_2=min(diff(alo2[order(alo2$Temp),]$Temp))
small_3=min(diff((alo %>% drop_na(Humi))[order((alo %>% drop_na(Humi))$Humi),]$Humi))
small_4=min(diff((alo2 %>% drop_na(Humi))[order((alo2 %>% drop_na(Humi))$Humi),]$Humi))
##y4
#Vẽ biểu đồ phổ nhiệt độ theo từng thiết bị cảm biến
data=a%>%select(deviceid,Temp,Humi)
Bang_nhiet1=data%>%filter(deviceid=='"SS0866974771458415"')%>%ggplot(aes(Temp))+
  geom_histogram(col="black",binwidth = 1,fill="blue") + xlab("Bieu do pho nhiet dv1")
Bang_nhiet2=data%>%filter(deviceid=='"SS0866977441458415"')%>%ggplot(aes(Temp))+
  geom_histogram(col="black",binwidth = 1,fill="blue") + xlab("Bieu do pho nhiet dv2")
Bang_nhiet3=data%>%filter(deviceid=='"SS0466973631458415"')%>%ggplot(aes(Temp))+
  geom_histogram(col="black",binwidth = 1,fill="blue") + xlab("Bieu do pho nhiet dv3")
##y5
Bang_am_1=data%>%filter(deviceid=='"SS0866974771458415"')%>%ggplot(aes(Humi))+
  geom_histogram(col="black",binwidth = 1,fill="blue") + xlab("Bieu do am dv1")
Bang_am_2=data%>%filter(deviceid=='"SS0866977441458415"')%>%ggplot(aes(Humi))+
  geom_histogram(col="black",binwidth = 1,fill="blue") + xlab("Bieu do am dv2")
Bang_am_3=data%>%filter(deviceid=='"SS0466973631458415"')%>%ggplot(aes(Humi))+
  geom_histogram(col="black",binwidth = 1,fill="blue") + xlab("Bieu do am dv3")

