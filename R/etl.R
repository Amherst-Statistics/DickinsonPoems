# create local copy of Emily Dickinson poems (Project Gutenberg edition)
# Nicholas Horton (nhorton@amherst.edu)
#
# this should be run once to copy files to the specified directory

library(mdsr)

directory <- "gutenberg"
if (!dir.exists(directory)) {
  cat("creating directory\n")
  dir.create(directory)
}
setwd(directory)

poems <- "gutenberg.tar"
site <- "https://nhorton.people.amherst.edu"
URL <- paste(site, poems, sep="/")
if (file.exists(poems)) {
  cat(poems, "already exists\n")
} else {
  download.file(URL, poems)
  system(paste("tar xvf ", poems))
}

cat("displaying a random poem\n")
files <- list.files(".")
n <- length(files)
     
randnum <- sample(1:n, 1) 
lines <- readLines(paste(files[randnum], sep=""))
for (i in 1:length(lines)) {
  cat(paste(lines[i], "\n"))
}

