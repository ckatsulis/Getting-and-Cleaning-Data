setwd("R:/ChrisK/R/Getting and Cleaning Data/")

## Q1
library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

GITHUB_CONSUMER_SECRET = "f7ac1ed5203242bdec265c022a63b6fcd98115f9"

# 2. Register an application at https://github.com/settings/applications
#    Insert your values below - if secret is omitted, it will look it up in
#    the GITHUB_CONSUMER_SECRET environmental variable.
#
#    Use http://localhost:1410 as the callback url

myapp <- oauth_app("github", "0e22f45f9f51af2a4e55")

## 3. Get OAuth credentials

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
req <- GET("https://api.github.com/rate_limit", config(token = github_token))
stop_for_status(req)
content(req)

#2013-11-07T13:25:07Z

## Q2,3
require(sqldf)
acs = read.csv(url("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"))

## Q4
require(RCurl)
require(XML)
webpage <- getURL("http://biostat.jhsph.edu/~jleek/contact.html")
webpage <- readLines(tc <- textConnection(webpage)); close(tc)
nchar(webpage[c(10,20,30,100)])

## Q5
dat = read.table(url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),sep=c("  "),skip=4,nrows = 1,header=F)
wid = c(9,-6,4,4,-5,4,4,-5,4,4,-5,4,4)
dat = read.fwf(url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),widths=wid, skip=4,header=F)
dat

sum(dat$V8)



