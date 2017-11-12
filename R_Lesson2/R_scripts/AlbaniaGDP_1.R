# This script computes the average GDP for Albania using the gapminder dataset


#location of the data
filename <- '../Data/gapminder.txt'

#READ the data file
gapminder <- read.table(filename, header = TRUE)

#Select the rows where the country is (Albania) and store albaniaData
albaniaData <- gapminder[gapminder$country == "Albania",]

#Select the colum containing the GDP per capita from our Albania data
albaniaGPD <- albaniaData$gdpPercap

#computing the average GDP value
albaniaAvgGDP <- mean(albaniaGPD)

#print a message with the result

print(paste("The average GDP of Albania is",albaniaAvgGDP))
