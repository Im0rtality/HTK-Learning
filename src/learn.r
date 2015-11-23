library(nnet)

args <- commandArgs(trailingOnly = TRUE)
#args <- c("../data/htk-smaller.csv", 10, 10)
data <- read.csv(args[1], F, strip.white=T)
y <- matrix(0, ncol=23, nrow=nrow(data))
y[cbind(1:nrow(data),as.numeric(data$V14))] <- 1
x <- data[1:13]
n <- nnet(x, y, size=as.integer(args[2]), maxit=as.integer(args[3]), decay = 5e-4)
n$wts
str(n)