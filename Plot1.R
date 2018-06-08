
maindata<-read.table(file = "household_power_consumption.txt",sep = ";",header=TRUE)
maindata$Date<-as.Date(maindata$Date,format = "%d/%m/%Y")
datetime <- as.POSIXct(paste(maindata$Date, maindata$Time), format="%Y-%m-%d %H:%M:%S")
maindata$datetime = datetime
smaindata <-subset(maindata, datetime >= "2007-02-01 00:00:00" & datetime<= "2007-02-02 23:59:00")
smaindata$Global_active_power <- as.numeric(levels(smaindata$Global_active_power))[smaindata$Global_active_power]
smaindata$Sub_metering_1 <- as.numeric(levels(smaindata$Sub_metering_1))[smaindata$Sub_metering_1]
smaindata$Sub_metering_2 <- as.numeric(levels(smaindata$Sub_metering_2))[smaindata$Sub_metering_2]
smaindata$Sub_metering_3 <- as.numeric(levels(smaindata$Sub_metering_3))[smaindata$Sub_metering_3]
smaindata$Global_reactive_power <- as.numeric(levels(smaindata$Global_reactive_power))[smaindata$Global_reactive_power]
smaindata$Voltage <- as.numeric(levels(smaindata$Voltage))[smaindata$Voltage]

hist(smaindata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowats)", col = "red")
