source("./util/file_path.R")

step.mergeDataSets <- function(dataDirectory = ".", sep = "/") {
	xTrain <- read.table(filePath(dataDirectory, "train/X_train.txt"))
	xTest <- read.table(filePath(dataDirectory, "test/X_test.txt"))
	xAll <- rbind(xTrain, xTest)
	
	yTrain <- read.table(filePath(dataDirectory, "train/y_train.txt"))
	yTest <- read.table(filePath(dataDirectory, "test/y_test.txt"))
	yAll <- rbind(yTrain, yTest)
	
	subjectTrain <- read.table(filePath(dataDirectory, "train/subject_train.txt"))
	subjectTest <- read.table(filePath(dataDirectory, "test/subject_test.txt"))
	subjectAll <- rbind(subjectTrain, subjectTest)
	
	list(xAll = xAll, yAll = yAll, subjectAll = subjectAll)
}
