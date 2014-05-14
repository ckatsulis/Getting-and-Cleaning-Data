Getting-and-Cleaning-Data
=========================
The "Data Science" Specialization

### Course Instructions:
1.  You should create one R script called run_analysis.R that does the following. 
2.  Merges the training and the test sets to create one data set.
3.  Extracts only the measurements on the mean and standard deviation for each measurement. 
4.  Uses descriptive activity names to name the activities in the data set
5.  Appropriately labels the data set with descriptive activity names. 
6.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#### Script Explanation
1.  Data Labels are read into R, scrubbed according to tidy data standards
2.  Subject Vectos are read into R, and scrubbed.
3.  Data sets for X (raw and calcualted values) and Y (activity) are read into R.
4.  Subject Voctors are cbound to the data set X for the test and training 
5.  Activity vector (Y) is bound to the data set X for the test and training
6.  rbind is used to "merge" the two data sets.  This was used for simplicity given that a true merge wasn't necessary and rather costly in this case.

##### Part 1:
1.  Grep the features vector for "mean" or "std" text
2.  Supply the modified features vector to the columns requirement within the merged data set.
3.  Output this data frame to a csv file
4.  Included in github is the head of this output including 1000 rows of data. (part1_output.head.csv)
File details:
size: 10.1
rows: 10299
cols: 86
col.names:
 [1] "tbodyaccmeanx"                     "tbodyaccmeany"                    
 [3] "tbodyaccmeanz"                     "tbodyaccstdx"                     
 [5] "tbodyaccstdy"                      "tbodyaccstdz"                     
 [7] "tgravityaccmeanx"                  "tgravityaccmeany"                 
 [9] "tgravityaccmeanz"                  "tgravityaccstdx"                  
[11] "tgravityaccstdy"                   "tgravityaccstdz"                  
[13] "tbodyaccjerkmeanx"                 "tbodyaccjerkmeany"                
[15] "tbodyaccjerkmeanz"                 "tbodyaccjerkstdx"                 
[17] "tbodyaccjerkstdy"                  "tbodyaccjerkstdz"                 
[19] "tbodygyromeanx"                    "tbodygyromeany"                   
[21] "tbodygyromeanz"                    "tbodygyrostdx"                    
[23] "tbodygyrostdy"                     "tbodygyrostdz"                    
[25] "tbodygyrojerkmeanx"                "tbodygyrojerkmeany"               
[27] "tbodygyrojerkmeanz"                "tbodygyrojerkstdx"                
[29] "tbodygyrojerkstdy"                 "tbodygyrojerkstdz"                
[31] "tbodyaccmagmean"                   "tbodyaccmagstd"                   
[33] "tgravityaccmagmean"                "tgravityaccmagstd"                
[35] "tbodyaccjerkmagmean"               "tbodyaccjerkmagstd"               
[37] "tbodygyromagmean"                  "tbodygyromagstd"                  
[39] "tbodygyrojerkmagmean"              "tbodygyrojerkmagstd"              
[41] "fbodyaccmeanx"                     "fbodyaccmeany"                    
[43] "fbodyaccmeanz"                     "fbodyaccstdx"                     
[45] "fbodyaccstdy"                      "fbodyaccstdz"                     
[47] "fbodyaccmeanfreqx"                 "fbodyaccmeanfreqy"                
[49] "fbodyaccmeanfreqz"                 "fbodyaccjerkmeanx"                
[51] "fbodyaccjerkmeany"                 "fbodyaccjerkmeanz"                
[53] "fbodyaccjerkstdx"                  "fbodyaccjerkstdy"                 
[55] "fbodyaccjerkstdz"                  "fbodyaccjerkmeanfreqx"            
[57] "fbodyaccjerkmeanfreqy"             "fbodyaccjerkmeanfreqz"            
[59] "fbodygyromeanx"                    "fbodygyromeany"                   
[61] "fbodygyromeanz"                    "fbodygyrostdx"                    
[63] "fbodygyrostdy"                     "fbodygyrostdz"                    
[65] "fbodygyromeanfreqx"                "fbodygyromeanfreqy"               
[67] "fbodygyromeanfreqz"                "fbodyaccmagmean"                  
[69] "fbodyaccmagstd"                    "fbodyaccmagmeanfreq"              
[71] "fbodybodyaccjerkmagmean"           "fbodybodyaccjerkmagstd"           
[73] "fbodybodyaccjerkmagmeanfreq"       "fbodybodygyromagmean"             
[75] "fbodybodygyromagstd"               "fbodybodygyromagmeanfreq"         
[77] "fbodybodygyrojerkmagmean"          "fbodybodygyrojerkmagstd"          
[79] "fbodybodygyrojerkmagmeanfreq"      "angletbodyaccmeangravity"         
[81] "angletbodyaccjerkmeangravitymean"  "angletbodygyromeangravitymean"    
[83] "angletbodygyrojerkmeangravitymean" "anglexgravitymean"                
[85] "angleygravitymean"                 "anglezgravitymean"

##### Part 2:
1.  Using the originall merged data frame, split based on subject number and then calculate the average across each variable.
2.  Output this calculated and summerized data frame to a csv file
3.  
