library(psych)

source("RIO.R")


input <- function(inputfile) {
   parameters <- readParameters(inputfile)
   countA1 <<- as.integer(parameters["countA1", 2])
   countA2 <<- as.integer(parameters["countA2", 2])
   countB1 <<- as.integer(parameters["countB1", 2])
   countB2 <<- as.integer(parameters["countB2", 2])
}


run <- function() {
	print(countA1)
	print(countB2)
#create 2x2 table
	data <- matrix(c(countA1, countA2, countB1, countB2), nrow=2)
	result <<- tetrachoric(data)
}


output <- function(outputfile) {
   print(result)
}

