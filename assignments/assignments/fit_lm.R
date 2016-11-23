### fit_lm.R

#The important variables are: 2, 3, 5, 7
important.variables <- c(1, 2, 5, 7, 11)
data <- data[, important.variables]

lm.object <- lm(y~., data=data)
summary(lm.object)
coef(lm.object)
