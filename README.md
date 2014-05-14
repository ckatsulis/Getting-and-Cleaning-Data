Getting-and-Cleaning-Data
=========================
The "Data Science" Specialization

### Course Instructions:
1. You should create one R script called run_analysis.R that does the following. 
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive activity names. 
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#### Script Explanation
1.  Data Labels are read into R, scrubbed according to tidy data standards
2.  Subject Vectos are read into R, and scrubbed.
3.  Data sets for X (raw and calcualted values) and Y (activity) are read into R.
4.  Subject Voctors are cbound to the data set X for the test and training 
5.  Activity vector (Y) is bound to the data set X for the test and training
6.  rbind is used to "merge" the two data sets.  This was used for simplicity given that a true merge wasn't necessary and rather costly in this case.

##### Part 1:
1.  Grep the features vector for "mean" or "std" text
