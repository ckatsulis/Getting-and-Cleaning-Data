setwd("R:/ChrisK/R/Getting and Cleaning Data/")

## #Q1
dat = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"))
lists = strsplit(names(dat),"wgtp")
lists[123]


## Q2
dat = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"),skip=4,nrows=190)
dat = dat[,c(1,2,4,5)]
names(dat) = c("ABR","Ranking","Economy","GDP")
dat = data.table(dat)
head(dat)
dat$GDP = as.numeric(gsub(",","",as.character(dat$GDP)))
mean(dat$GDP)
