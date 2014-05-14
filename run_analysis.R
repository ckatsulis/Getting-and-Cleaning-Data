#  run_analysis.R

# Data Labels
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels = as.vector(activity_labels$V2)
activity_labels = gsub("\\(|\\)|-","",activity_labels)

features = read.table("UCI HAR Dataset/features.txt")
features = as.vector(features$V2)
features = gsub("\\(|\\)|-","",features)

# Subject Vectors
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
subject_train = as.vector(subject_train)
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
subject_test = as.vector(subject_test)

# Data Sets
X_train = read.table("UCI HAR Dataset/train/X_train.txt", col.names = features)
Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")
X_test = read.table("UCI HAR Dataset/test/X_test.txt", col.names = features)
Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")

X = merge(X_train,X_test, all=TRUE)
Y = merge(Y_train,Y_test, all=TRUE)
