#Biểu đồ thu thập gồm nhiệt độ và độ ẩm theo thời gian từ ngày 1 đến ngày 7 của từng thiết bị
library(dplyr)
library(ggplot2)
cau5=read.csv("Documents/5-04_2021.csv")
count_devices=data.frame(table(cau5$deviceid))
l=data.frame(cau5%>%select(date,deviceid,Temp,Humi))
l$date=strptime(l$date,"%Y-%m-%d %H:%M:%S")
#loc du lieu theo tuan
tuan1=l%>%filter(as.integer(format(as.Date(date),"%d"))>=1 & as.integer(format(as.Date(date),"%d"))<=7)
tuan2=l%>%filter(as.integer(format(as.Date(date),"%d"))>=8 & as.integer(format(as.Date(date),"%d"))<=14)
tuan3=l%>%filter(as.integer(format(as.Date(date),"%d"))>=15 & as.integer(format(as.Date(date),"%d"))<=21)
tuan4=l%>%filter(as.integer(format(as.Date(date),"%d"))>=22 & as.integer(format(as.Date(date),"%d"))<=28)
#loc du lieu theo thang
thang=l%>%filter(as.integer(format(as.Date(date),"%d"))>=1 & as.integer(format(as.Date(date),"%d"))<=28)
thang_dv1=thang%>%filter(is.na(Humi))%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 1 đến ngày 28")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm cả tháng")
#Thiet bi 1
tuan1_dv1=tuan1%>%filter(deviceid=='"SS0866974771458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 1 đến ngày 7")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866974771458415")
tuan2_dv1=tuan2%>%filter(deviceid=='"SS0866974771458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 8 đến ngày 14")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866974771458415")
tuan3_dv1=tuan3%>%filter(deviceid=='"SS0866974771458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 15 đến ngày 21")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866974771458415")
tuan4_dv1=tuan4%>%filter(deviceid=='"SS0866974771458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 22 đến ngày 28")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866974771458415")
#Thiet bi 2
tuan1_dv2=tuan1%>%filter(deviceid=='"SS0866977441458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 1 đến ngày 7")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866977441458415")
tuan2_dv2=tuan2%>%filter(deviceid=='"SS0866977441458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 8 đến ngày 14")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866977441458415")
tuan3_dv2=tuan3%>%filter(deviceid=='"SS0866977441458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 15 đến ngày 21")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866977441458415")
tuan4_dv2=tuan4%>%filter(deviceid=='"SS0866977441458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+
  xlab("Từ ngày 22 đến ngày 28")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0866977441458415")
#Thiet bi 3
tuan1_dv3=tuan1%>%filter(deviceid=='"SS0466973631458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+xlab("Từ ngày 1 đến ngày 7")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0466973631458415")
tuan2_dv3=tuan2%>%filter(deviceid=='"SS0466973631458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+xlab("Từ ngày 8 đến ngày 14")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0466973631458415")
tuan3_dv3=tuan3%>%filter(deviceid=='"SS0466973631458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+xlab("Từ ngày 15 đến ngày 21")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0466973631458415")
tuan4_dv3=tuan4%>%filter(deviceid=='"SS0466973631458415"')%>%ggplot(aes(as.POSIXct(date)))+geom_line(aes(y=Humi),colour="blue")+geom_line(aes(y=Temp),colour="red")+xlab("Từ ngày 22 đến ngày 28")+ylab("Value")+ggtitle("Biểu đồ nhiệt độ và độ ẩm SS0466973631458415")
