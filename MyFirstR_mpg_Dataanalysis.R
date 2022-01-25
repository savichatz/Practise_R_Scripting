install.packages("ggplot2")

#Load Library
library(ggplot2)
data (mpg)

view(mpg)
??mpg

#plot with both points and smoothed with blue points
ggplot(data= mpg, aes(x = displ, y = hwy))+
  geom_point(colour = "blue")+
  geom_smooth(color = "red")+
  ggtitle('Car Database')+
  labs(y='Gallon ber HighwayMile', x='Displacement')
geom_point()
cor(mpg['hwy'],mpg['displ'])
