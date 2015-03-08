setwd("d:/zhengcl/Datascience/Exploratory/project1")
consump <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE, colClasses=c(rep("character",2), rep("numeric", 7)))
consump_subset <- subset(consump, Date=="1/2/2007" | Date=="2/2/2007")