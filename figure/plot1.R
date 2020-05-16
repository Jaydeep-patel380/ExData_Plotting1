data <- read.table("D:/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

data$Date <- as.Date(data$Date, "%d/%m/%Y")
View(data)

final_data <- subset(data, data$Date >= as.Date("2007-02-01") & data$Date <= as.Date("2007-02-02"))

hist(final_data$Global_active_power, col = "red", xlab = "Global Active Power(kilowatts)", main = "Global Active Power")
