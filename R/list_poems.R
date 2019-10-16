list_poems <- function() {
  dirname <- paste(system.file("extdata", package = "DickinsonPoems"))
  curdir <- getwd()
  stopifnot(dir.exists(dirname))
  setwd(dirname)
  poems <- list.files()
  setwd(curdir)
  return(poems)
}

