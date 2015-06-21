run_analysis <- function() {
    
    # activities
    actlabel <- read.table("activity_labels.txt", col.names = c('Id', 'Activity'))
    
    # list required mean and std features
    features <- read.table("features.txt", col.names = c('Id', 'Feature'))
    
    reqfeatures <- rbind(features[grep("mean\\(\\)", features$Feature),]
                         , features[grep("std\\(\\)", features$Feature),])
    reqfeatures <- reqfeatures[order(reqfeatures$Id), ]
    
    # subjects for train and test records
    trainsubj <- read.table("./train/subject_train.txt", col.names = c('Id'))
    trainsubj <- cbind(rownum = 1:nrow(trainsubj), trainsubj)
    
    testsubj <- read.table("./test/subject_test.txt", col.names = c('Id'))
    testsubj <- cbind(rownum = 1:nrow(testsubj), testsubj)
    
    # activity labels for train and test records
    ytrain <- read.table("./train/y_train.txt", col.names = c('Id'))
    ytrain <- cbind(rownum = 1:nrow(ytrain), ytrain)
    
    ytest <- read.table("./test/y_test.txt", col.names = c('Id'))
    ytest <- cbind(rownum = 1:nrow(ytest), ytest)
    
    # activity labels for train and test records
    Xtrain <- read.table("./train/X_train.txt", col.names = features$Feature, colClasses = numeric())
    Xtest <- read.table("./test/X_test.txt", col.names = features$Feature, colClasses = numeric())
    
    # extract only mean and std columns
    Xtrain <- Xtrain[, reqfeatures$Id]
    Xtest <- Xtest[, reqfeatures$Id]
    
    # merge activity names with records
    ytrain <- merge(actlabel, ytrain, all = TRUE)
    ytrain <- ytrain[order(ytrain$rownum), ]
    
    ytest <- merge(actlabel, ytest, all = TRUE)
    ytest <- ytest[order(ytest$rownum), ]
    
    # link subjects and activity names to records
    traindata <- cbind(Subject = trainsubj$Id, cbind(Activity = ytrain$Activity, Xtrain))
    testdata <- cbind(Subject = testsubj$Id, cbind(Activity = ytest$Activity, Xtest))
    
    # combine train and test and reorder columns
    dataset <- rbind(traindata, testdata)
    dataset <- dataset[order(dataset$Subject), ]
    
    # generate average for each column, grouped by subject and activity
    avgdataset <- aggregate(dataset[,3:ncol(dataset)], dataset[,1:2], FUN = mean)
    
    # write out tidy dataset
    write.table(avgdataset, file = "../myTidyDataset.txt", sep = "\t", row.names = FALSE)
}