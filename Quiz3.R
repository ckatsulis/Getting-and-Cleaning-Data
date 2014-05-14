setwd("R:/ChrisK/R/Getting and Cleaning Data/")

## Q1

dat = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"))
datT = data.table(dat)
agricultureLogical = (dat$AGS==6) & (dat$ACR==3)
which(agricultureLogical)


## Q2
require(jpeg)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg","image.jpg")
dat = readJPEG("image.jpg",native=TRUE)
quantile(dat,probs=c(0.30,0.80))

## Q3

gdp = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"),skip = 5 ,nrows = 190,header=F)
edu = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"))

gdp = gdp[,c(1,2,4,5)]
names(gdp) = c("ABR","Ranking","Economy","GDP")
gdp$V4[order(gdp$V2,decreasing=T),][13]
table(gdp$V4 %in% edu$Table.Name )

gdp$V4[!(gdp$V4 %in% edu$Table.Name)]

mdat = merge(gdp,edu,by.x="Economy",by.y="Short.Name",all=T)
mdat = mdat[1:190,]
mdat = mdat[order(mdat$Ranking,decreasing=T),]
mdat[,mean(Ranking),by=Income.Group]
mdat = data.table(mdat)
mdat[,mean(Ranking),by=Income.Group]

mdat = mdat[order(mdat$Ranking,decreasing=F),]
View(mdat[(Ranking %in% (1:38)) & (Income.Group == "Lower middle income"),])
View(mdat[(1:38) & (Income.Group == "Lower middle income")])

