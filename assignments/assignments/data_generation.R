### data_generation.R
GenerateData <- function(N, P){

data <- matrix(rnorm(N*P), ncol=P)
data <- cbind(rowSums(data)+rnorm(N, sd=1e2), data)
data <- data.frame(scale(data))
colnames(data) <- c("y", paste("x", c(1:P), sep=""))

return(data)
}

lm(y~., data)


