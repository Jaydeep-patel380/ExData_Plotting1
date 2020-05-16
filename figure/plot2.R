
dateTime <- paste(final_data$Date, final_data$Time)
dateTime <- setNames(dateTime, "DateTime")
final_data <- final_data[ ,!(names(final_data) %in% c("Date","Time"))]
final_data <- cbind(dateTime, final_data)
final_data$dateTime <- as.POSIXct(dateTime)

View(final_data)
plot(final_data$Global_active_power~final_data$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
