library(ggplot2)
library(RColorBrewer)
Irish_Stats$xAxis <- 1:18
p4 <- ggplot(Irish_Stats,aes(xAxis)) +
  scale_x_continuous(breaks=1:18) +
  geom_line(aes(y=`Val_2011`),color="#003201",linewidth=2) +
  geom_line(aes(y=`Val_2016`),color="#006701",linewidth=2) +
  geom_line(aes(y=`Val_2022`),color="#00b302",linewidth=2) +

  theme(
    axis.text.y = element_text(face = "bold",size=12,color="#ddb200"),
    axis.text.x = element_blank(),
    plot.margin = margin(10, 20, 10, 5),
    panel.grid = element_line(color="#ddb200",linewidth=0.5),
    panel.grid.minor.x = element_blank(),
    panel.background = element_rect(fill = "white"),
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )
p4

ggplot(Irish_Stats, aes(Population,`% Daily Irish\r\nspeakers`)) +
  geom_point(aes(color=County),size=4) +
  scale_y_continuous(limits=c(0,100))+
  theme(
    axis.text.y = element_text(face = "bold",size=12,color="black"),
    axis.text.x = element_text(face = "bold",size=12,color="black"),
    plot.margin = margin(10, 20, 10, 5),
    panel.grid = element_line(color="#ddb200",linewidth=0.5),
    panel.background = element_rect(fill = "white"),
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

Ages <- c("3 - 4", "5 - 9", "10 - 14", "15 - 19", "20 - 24", "25 - 29", "30 - 34", "35 - 39", "40 - 44", "45 - 49", "50 - 54", "55 - 59", "60 - 64", "65 - 69", "70 - 74", "75 - 79", "80 - 84", "85+")
ggplot(Gaeltachts, aes(x=`Age Group`,y=Val,fill=factor(Year))) +
  geom_bar(stat="identity",position="dodge") +
  scale_fill_manual(values=c("#003201","#006701","#00b302")) +
  scale_x_discrete(limits=Ages) +
  geom_hline(yintercept=c(3680, 3567, 3620),linetype='dashed',linewidth=1, col=c("#003201","#006701","#00b302")) +
  theme(
    axis.text.y = element_text(face = "bold",size=12,color="black"),
    axis.text.x = element_text(angle=45,vjust=1,hjust=1.1,face = "bold",size=12,color="black"),
    plot.margin = margin(10, 20, 10, 5),
    panel.grid = element_line(color="#ddb200",linewidth=0.5),
    panel.background = element_rect(fill = "white"),
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )


