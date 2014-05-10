library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
length(grep("^2012",sampleTimes))

table(weekdays(as.Date(sampleTimes[grep("^2012",sampleTimes)],'%Y-%m-%d')))

httrdevtools::install_github("hadley/httr")
