#install package to choose csv file
install.packages("psych")
library(psych)

#read csv from location
data <- read.csv(file.choose(), header=T)
View(data)

#H0: There is no difference in mean (mu=0)
#H1: There is a difference in mean (mu is not equal to 0)

#Paired t -test, two tailed hypothesis
t.test(data$After, data$Before, mu=0, paired=T, alternative = 'two.sided', conf.level = 0.95)

#Paired t -test, two tailed hypothesis
t.test(data$Before, data$After, mu=0, paired=T, alternative = 'two.sided', conf.level = 0.95)


#Paired t -test, one tailed hypothesis(Assuming there is high BP before excercising)
t.test(data$Before, data$After, mu=0, paired=T, alternative = 'greater', conf.level = 0.95)

#Paired t -test, one tailed hypothesis(Assuming there is decrease in BP After excercising)
t.test(data$After, data$Before, mu=0, paired=T, alternative = 'less', conf.level = 0.95)
