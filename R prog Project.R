#R Programming Project 

getwd()
# install.packages("dplyr")
# install.packages("ggplot2")

library(dplyr)
library(ggplot2)

df=read.csv("Train.csv")
df
ggplot(df)

summary(df)

dim(df)

names(df)

#BarPlot
ggplot(df,aes(x=Reached.on.Time_Y.N))+geom_bar()
#From the bar graph plotted we can see that 6500+ orders have reached on time
#and around 4500+ orders have been delayed.

ggplot(df,aes(x=Mode_of_Shipment))+geom_bar(fill="blue")+
  labs(title = "Mode of Shipment")
#Frome the plotted bar graph we get the information that maximum shipments have
#been shipped through Ships.

ggplot(df,aes(x=Gender))+geom_bar(fill="yellow")+labs(title = "Gender")
#From the bar graph plotted we can make a conclusion that females have made
#a little more orders than males.

#Histogram
ggplot(df,aes(x=Discount_offered))+geom_histogram(fill="red")+
  labs(title = "Discount Offered")
#From the histogram we notice that discount offered for maximum products is
#between 0-15$.

hist(
  df$Cost_0f_the_Product,
  col = "green",
  main="Product Cost",
  xlab="Cost",
  ylab="Frequency"
)
#From the histogram we know that maximum products have their cost in the range
#150-270$.

#BoxPlot
ggplot(df,aes(x=Weight_in_gms))+geom_boxplot()

boxplot(
  df$Customer_rating,
  ylab="Customer Rating",
  col = "orange",
  border="black"
)

#Scatterplot
plot(
  df$Weight_in_gms,df$Warehouse_block,
  xlab="Weight in gms",
  ylab = "Warehouse Block",
  main = "Warehouse Block vs Weight in gms",
  pch=19
)
#From the scatter plot we can see that shipments which have weight above 
#6000 gms have stored in Warehouse block 2, 4 and 6.



plot(density(df$Prior_purchase),main="Prior Purchases")
#From density plot we see that maximum prior purchases have been made 3 times



