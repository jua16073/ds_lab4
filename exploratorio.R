setwd("Documents/Data_Science/ds_lab4")
getwd()

library(plyr)
library(fitdistrplus)

train <- read.csv("train.csv")
test <- read.csv("test.csv")

train1 <- data.frame(train)
test1 <- data.frame(test)

total <- merge(train1, test1, all = TRUE)
total

diagnosis <- table(train$diagnosis)
plot(diagnosis)

count(diagnosis)
