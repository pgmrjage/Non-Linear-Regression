setwd("D:\\Programming Files\\R Language\\Non-Linear Regression")

df <- read.csv("retaildata.csv")

# View(df)

# Installing packages
# install.packages("minpack.lm")
# install.packages("ggplot2")


library("minpack.lm")
library("ggplot2")

sales <- as.double(df$Sales)
profit <- as.double(df$Profit)


start_val <- c(a = 3, b = 9)

fit <- nls(profit ~ a * exp(b * sales), 
            data = df,
            start = start_val, 
            algorithm = "port", 
            control = nls.control(maxiter = 1000))

summary(fit)