source("./util/file_path.R")

util.features <- function(dataDirectory = ".", sep = "/") {
	features <- read.table(filePath(dataDirectory, "features.txt"))

	features
}
