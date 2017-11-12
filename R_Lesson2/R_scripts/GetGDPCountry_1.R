# This script computes the GDP for a country using the gapminder data

#clear all variable
rm(list=ls())

#location of the data
filename <- "../Data/gapminder.txt"

#read the data file
gapminder <- read.table(filename, header = TRUE)

# EXTRACT gdpPercap from the gapminder data, using a specific country
getAverageGDPPerCapita <-  function(country, gapminder){
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

gdpUSA <- getAverageGDPPerCapita("United_States",gapminder)
print(paste("The average GDP of United States is", gdpUSA))

gdpCanada <- getAverageGDPPerCapita("Canada",gapminder)
print(paste("The average GDP of Canada is", gdpCanada))
