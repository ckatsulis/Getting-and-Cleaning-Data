setwd("R:/ChrisK/R/Getting and Cleaning Data/")

## Q1,2
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
dat = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"))
table(dat$VAL  == 24)[2]

## Q3
library("xlsx", lib.loc="C:/Users/chris.katsulis/Documents/R/R-3.0.2/library")
require(xlsx)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx","Q3.xlsx")
read.xlsx("Q3.xlsx",sheetIndex=1)
dat = read.xlsx("Q3.xlsx",sheetIndex=1,rowIndex = (18:23), colIndex = (7:15))
dat = read.csv("Q3.csv")

sum(dat$Zip * dat$Ext,na.rm=T)


## Q4
require(XML)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(fileUrl,useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

library(XML)
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileUrl,useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)



## Q5
require(data.table)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv","getdata-data-ss06pid.csv")
dat = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"))

DT = fread("getdata-data-ss06pid.csv", sep="auto", sep2="auto", nrows=-1L, header="auto", na.strings="NA",
      stringsAsFactors=FALSE, verbose=FALSE, autostart=30L, skip=-1L, select=NULL,
      drop=NULL, colClasses=NULL,
      integer64=getOption("datatable.integer64"),         # default: "integer64"
      showProgress=getOption("datatable.showProgress")    # default: TRUE
)

DT[,mean(pwgtp15),by=SEX]

rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
tapply(DT$pwgtp15,DT$SEX,mean)
mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)
mean(DT$pwgtp15,by=DT$SEX)
sapply(split(DT$pwgtp15,DT$SEX),mean)