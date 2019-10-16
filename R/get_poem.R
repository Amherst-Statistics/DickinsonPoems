get_poem <- function(poem) {
  filename <- paste(system.file("extdata", package = "DickinsonPoems"), 
                  poem, sep = "/") 
  stopifnot(file.exists("filename"))
  poemLines <- readLines(filename)
  return(poemLines)
}

