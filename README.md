Getting-and-Cleaning-Data
=========================
The "Data Science" Specialization

##  Course Instructions:
1.  You should create one R script called run_analysis.R that does the following. 
2.  Merges the training and the test sets to create one data set.
3.  Extracts only the measurements on the mean and standard deviation for each measurement. 
4.  Uses descriptive activity names to name the activities in the data set
5.  Appropriately labels the data set with descriptive activity names. 
6.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


### Documentation for run_analysis.R

### Initial Housekeeping
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
4.  Included in github is the head of this output including 1000 rows of data. (part1_output.head.txt)

##### File details:
* size: 10.1 MB
* rows: 10299
* cols: 86
* sample col name: e.g. tbodyaccmeanx, tbodyaccstdx, etc.

##### Part 2:
1.  Using the originall merged data frame, split based on subject number and then calculate the average across each variable.
2.  Output this calculated and summerized data frame to a csv file
3.  Included in github is the head of this output including 1000 rows of data. (part2_output.head.txt)

##### File details:
* size: 321.9 KB
* rows: 30
* cols: 561
* sample col name: e.g. tbodyaccmeanx, tbodyaccmeany, etc.

