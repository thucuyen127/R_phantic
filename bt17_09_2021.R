library(nycflights13)
library(ggplot2)
library(dplyr)
data("flights")
flights %>% names
View(flights)
data("airlines")
View(airlines)
(filter(airlines, name == "Alaska Airlines Inc."))[1,1]
a = filter(flights, carrier =="AS")
ggplot(data = a, aes(x = dep_delay , y = arr_delay))+
  geom_point()
##B�i 2
data("weather")
View(weather)
b = filter(filter(filter(weather, origin =="EWR"),month ==1),day<=15)
ggplot(data = b, aes(x = time_hour,y = temp))+
  geom_line()
#B�i 3
ggplot(weather, aes(x=temp)) + geom_histogram()
#B�i 4
ggplot(weather, aes(x=factor(month),y=temp))+geom_boxplot()
#B�i 5
barr = count(flights,carrier)
ggplot(data = barr, aes(x = carrier,y  = n))+geom_bar(stat="identity")
