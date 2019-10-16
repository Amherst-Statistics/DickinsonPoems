# DickinsonPoems
Project Gutenberg version of Emily Dickinson's poems

Install via:

`devtools::install_github("Amherst-Statistics/DickinsonPoems")`

then access via:

```
list.files(system.file("extdata", package = "DickinsonPoems"))
```

```
filename <- paste(system.file("extdata", package = "DickinsonPoems"), 
                  "gutenberg3.txt166", sep = "/")
readLines(filename)
```

