with(smaindata, plot(Sub_metering_1 ~ datetime, type ="l", xlab = "", ylab ="Energy sub metering"))
with(smaindata, lines(Sub_metering_2 ~ datetime, type ="l", col = "red"))
with(smaindata, lines(Sub_metering_3 ~ datetime, type ="l", col = "blue"))
legend("topright", col = c("black","red","blue"), pch= "__", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
