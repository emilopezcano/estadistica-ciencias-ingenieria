library(fontawesome)
library(flextable)

# R options
options(width = 60)

# Chunk options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE
  )

# format num 

fnum <- function(x, d = 3){
  format(round(x, d), scientific = FALSE, big.mark = ".", decimal.mark = ",")
}
