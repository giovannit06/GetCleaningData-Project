# Read the data labels and choice of the right column were are present the 
# labels
features <- read.table("UCI HAR Dataset//features.txt",
                       stringsAsFactors = FALSE, header = FALSE)
labels <- features[,2]

# Read the data test and train
testData <- read.table("UCI HAR Dataset/test//X_test.txt",
                       stringsAsFactors = FALSE, header = FALSE)
trainData <- read.table("UCI HAR Dataset/train//X_train.txt",
                        stringsAsFactors = FALSE, header = FALSE)

# Merge both data test and data trai
mergedData <- rbind(testData,trainData)

# Give the right variables name
names(mergedData) <- labels

# Read the subject for test and train
testSubject <- read.table("UCI HAR Dataset//test//subject_test.txt",
                          stringsAsFactors = FALSE, header = FALSE)
trainSubject <- read.table("UCI HAR Dataset/train//subject_train.txt",
                           stringsAsFactors = FALSE, header = FALSE)

# Merge both data
mergedSubject <- rbind(testSubject,trainSubject)

# Give the right name of the variable
names(mergedSubject) <- "Subject"

# Read the acivity data for test and train
testActivity <- read.table("UCI HAR Dataset//test//y_test.txt",
                           stringsAsFactors = FALSE, header = FALSE)
trainActivity <- read.table("UCI HAR Dataset/train//y_train.txt",
                            stringsAsFactors = FALSE, header = FALSE)

# Merge both data
mergedActivity <- rbind(testActivity,trainActivity)

# Give the right name of the variable
names(mergedActivity) <- "Activity"

# Merge all three datasets to obtain the entire global dataset
mergedAll <- cbind(mergedActivity,mergedSubject,mergedData)

# Extract all the column mean() and std()
mergedExtracted <- mergedAll[,grep("Activity|Subject|mean\\(\\)|std\\(\\)",
                                   names(mergedAll))]

# Read the activities labels to replace the activity id number
activitiesLabels <- read.table("UCI HAR Dataset/activity_labels.txt",
                               stringsAsFactors = FALSE, header = FALSE)

# Put the right variables names 
names(activitiesLabels) <- c("ID","Activity")

# Factorize the Activity column with levels based on the ID and labels based
# on the Activities
mergedExtracted$Activity<-factor(mergedExtracted$Activity,
                                   levels = activitiesLabels$ID,
                                   labels = activitiesLabels$Activity)

# Optimize the variables name in order to eliminate meaningless name and 
# special characters
names(mergedExtracted) <- gsub("^t","time",names(mergedExtracted))
names(mergedExtracted) <- gsub("^f","frequency",names(mergedExtracted))
names(mergedExtracted) <- gsub("-mean\\(\\)","Mean",names(mergedExtracted))
names(mergedExtracted) <- gsub("-std\\(\\)","Std",names(mergedExtracted))
names(mergedExtracted) <- gsub("-X","Xaxis",names(mergedExtracted))
names(mergedExtracted) <- gsub("-Y","Yaxis",names(mergedExtracted))
names(mergedExtracted) <- gsub("-Z","Zaxis",names(mergedExtracted))
names(mergedExtracted) <- gsub("Acc","Accelerometer",names(mergedExtracted))
names(mergedExtracted) <- gsub("Gyro","Gyroscope",names(mergedExtracted))
names(mergedExtracted) <- gsub("Mag","Magnitude",names(mergedExtracted))

# Load the package reshape2 that allow us to reshape the data in tidy data
library(reshape2)

# Reshape the data respect to Subject and Activity
var<-names(mergedExtracted)[3:68]
mergedExtractedMelted <- melt(mergedExtracted,id.vars=c("Subject","Activity"),
                              variable.name="Variable",
                              value.name="Average")

mergedExtractedTidy <- dcast(mergedExtractedMelted,Subject+Activity~Variable,
                             value.var="Average",mean)

# Write the tidy data in a file txt
write.table(mergedExtractedTidy,file="tidyData.txt")