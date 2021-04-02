unzip("specdata.zip", exdir = "specdata")
list.files("specdata")
directory <- "specdata"
list.files(directory)
dataset_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
download.file(dataset_url, "specdata.zip")
unzip("specdata.zip", exdir = "specdata")
list.files("specdata")
files <- list.files("specdata")
directory <- "specdata"
files_list <- list.files(directory, full.names = TRUE)
dat <- data.frame()
number_of_files <- length(files)
for (i in 1:number_of_files) {
  dat <- rbind(dat, read.csv(files_list[i]))
}
mean(dat[, "sulfate"], na.rm = TRUE)
mean(dat[, "nitrate"], na.rm = TRUE)
pollutantmean <- function(directory, pollutant, id=1:332) {
  dat <- data.frame()
  files_list <- list.files(directory, full.names = TRUE)
  for (i in id) {
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  mean(dat[, pollutant], na.rm = TRUE)
}
pollutantmean("specdata", "sulfate", id=1:5)
