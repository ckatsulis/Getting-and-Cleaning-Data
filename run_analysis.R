#  run_analysis.R

# Data Labels
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels = as.vector(activity_labels$V2)
activity_labels = tolower(gsub("\\(|\\)|-|\\,","",activity_labels))

features = read.table("UCI HAR Dataset/features.txt")
features = as.vector(features$V2)
features = tolower(gsub("\\(|\\)|-|\\,","",features))

# Subject Vectors
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
subject_train = as.vector(subject_train$V1)
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
subject_test = as.vector(subject_test$V1)

# Data Sets
X_train = read.table("UCI HAR Dataset/train/X_train.txt", col.names = features)
Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")
X_test = read.table("UCI HAR Dataset/test/X_test.txt", col.names = features)
Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")

X_train$subject = subject_train
X_train$Y = Y_train$V1
rm(Y_train)
rm(subject_train)

X_test$subject = subject_test
X_test$Y = Y_test$V1
rm(Y_test)
rm(subject_test)

X = rbind(X_train,X_test)


## Part One
X_ave_std = X[,grep("mean|std",features)]
write.table(X_ave_std, "part1_output.txt", sep="\t")
write.table(head(X_ave_std,n=1000), "part1_output_head.txt", sep="\t")

## Part Two
require(plyr)
Y = split(X[,1:561],X$subject)

X_mean_calc = data.frame()
for (i in 1:length(Y)){
  X_mean_calc = rbind(X_mean_calc,lapply(Y[[i]],mean))
}

row.names(X_mean_calc) = 1:30

write.table(X_mean_calc, "part2_output.txt", sep="\t")
