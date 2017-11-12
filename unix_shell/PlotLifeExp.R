## This is life expectance across years script ##
myDataFull <- read.table("/Users/sanjay/Desktop/SWC_fall2017/Data/gapminder.txt", header = TRUE)

# Extracting only the country Canada
Canada <-  myDataFull[myDataFull$country == "Canada",]

##Open the file
#png("Canada.png")

plot(Canada$year, Canada$lifeExp, col = "blue", type = "l")


#Close the device
#dev.off()
