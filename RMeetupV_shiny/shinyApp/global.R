stockprices <- read.csv("stockprices.csv")
stockprices$Date <- as.character(stockprices$Date)

stocknames <- names(stockprices)[-1]

