# Script for data visualization portion of SWC lesson
# Daren Card
# UTA SWC Workshop
# 2017-11-12

install.packages("ggplot2")

library(ggplot2)

gapminder <- read.table("~/Desktop/SWC_fall2017/Data/gapminder.txt", header = TRUE)

ggplot( data = gapminder, aes(x = gdpPercap, y= lifeExp)) + geom_point

# Modify the example so that the figures shows how life expectancy changes over time
ggplot( data = gapminder, aes(x = year, y= lifeExp)) + geom_point()

#Modify this example  so that the data points are colored by country
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
  geom_point(show.legend = FALSE)

# #adding layers
# ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
#   geom_point(show.legend = FALSE) + 
#   geom_line(show.legend = FALSE)

ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
  geom_point() + geom_line() + theme(legend.position = "none")

#let's make the lines all one color
ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_point(aes(color = country)) + geom_line(color = "black") + theme(legend.position = "none")


#adding text
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
  geom_point() + 
  theme(legend.position = "none") + 
  labs(x = "Year", y = "Life Expectancy", title = "Figure 1")

#manipulate scales(i.e., transformation)
ggplot( data = gapminder, aes(x = gdpPercap, y= lifeExp)) + geom_point()
  + scale_x_log10() + geom_smooth(method="loess")

#faceting the data
starts.with <- substr(gapminder$country,start = 1, stop =1) 
az.countries <- gapminder[starts.with %in% c ("A", "Z"),]


################
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + 
  scale_x_log10()
