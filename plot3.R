
library(ggplot2)
library(scales)

#Plot 3- ggplot plot

#Aggregarting the data based on the condition
aggregatedTotalByType_baltimore <- aggregate(Emissions ~ type, baltimore_data, sum)

png('plot3.png', width=800, height=500, units='px')

plot3<-ggplot(aggregatedTotalByType_baltimore,aes(x=type,y=Emissions/(10^6)))+geom_bar(stat="identity")+labs(x="Type", y ="Total Emissions (in millions)", title = "Total Emissions vs Type")

dev.off()