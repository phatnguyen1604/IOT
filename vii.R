#loc du lieu theo ngay
cau7 <- X5_04_2021 %>% select(date,deviceid,Temp,Humi) %>% filter(as.integer(format(X5_04_2021$date, "%d")) >= 1
                                                                 & as.integer(format(X5_04_2021$date, "%d")) <=7)
date <- cau7$date
deviceid <- cau7$deviceid
temp <- cau7$Temp
humi <- cau7$Humi
#ve bieu do 
a = ggplot(cau7, aes(x=date, y=temp, fill=deviceid))
a + geom_smooth() + xlab("Date") + ylab("Temp") + theme_bw() + theme(legend.position = "bottom")
#Biểu đồ thu thập nhiệt độ/ độ ẩm theo thời gian từ ngày 1 đến ngày 7 của tất cả thiết bị.
  