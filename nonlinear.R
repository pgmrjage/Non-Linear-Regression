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


start_val <- c(a = as.double(3.50), b = as.double(9.40))