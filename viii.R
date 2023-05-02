#VIII.1
Date_4 <- FILE_3[671:1570,]
Date_4f33 = ggplot(data=Date_4, aes(x=Temp, y=Humi))
Date_4f33  + geom_line(aes(col=deviceid)) +labs(title = "",subtitle = "Ng?y 04-01-2021",x = "Nhi???t d???",y = "D??? ???m") + theme_bw()

Date_6f3<-FILE_3[760:1218,]
attach(Date_6f3)
Date_6f33 = ggplot(data=Date_6f3, aes(x=hour(date), y=Humi))
Date_6f33 + geom-point(aes(col=deviceid)) +labs(title = "", subtitle = "Ng?y 06-01-2021",x = "Th???i gian(gi???)",y = "Humi") + theme-bw()

#VIII.2
Tuongquan4_7f3<-FILE_3[1:1694,]
Tuongquan_grapf3.3<-ggplot(Tuongquan4_7f3, aes(x=Temp, y=Humi))
Tuongquan_grapf3.3 + geom_line() + ggtitle("From 04-01-2021 to 07-01-2021")+ theme_bw()

#VIII.3
Tuongquan8_14f3<-FILE_3[1695:4942,]
Tuongquan_grapf3.3<-ggplot(Tuongquan8_14f3, aes(x=Temp, y=Humi))
Tuongquan_grapf3.3 + geom_line() + ggtitle("From 08-01-2021 to 14-01-2021")+ theme_bw()

#VIII.4

Tuongquan15_21f3<-FILE_3[4943:9286,]
Tuongquan_grapf3.3<-ggplot(Tuongquan15_21f3, aes(x=Temp, y=Humi))
Tuongquan_grapf3.3 + geom_line() + ggtitle("From 15-01-2021 to 21-01-2021")+ theme_bw()

#VIII.5

Tuongquan22_28f3<-FILE_3[9287:12472,]
Tuongquan_grapf3.3<-ggplot(Tuongquan22_28f3, aes(x=Temp, y=Humi))
Tuongquan_grapf3.3 + geom_line() + ggtitle("From 22-01-2021 to 28-01-2021")+ theme_bw()
