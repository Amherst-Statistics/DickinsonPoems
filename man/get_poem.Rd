\name{get_poem}
\title{Get a specific Emily Dickinson poem}
\usage{
get_poem(poem)
}
\arguments{
  \item{poem}{A string indicating the filename of the specified poem}
}
\description{
Returns the text of a specified poem.  See https://github.com/Amherst-Statistics/DickinsonPoems for more information.
}
\value{
Returns a vector of character variables, one per line of the specified poem.  
}
\examples{
get_poem("gutenberg1.txt010")
}
