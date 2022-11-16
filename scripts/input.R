# setup -------------------------------------------------------------------
library(philsfmisc)
library(tidyverse)

# data loading ------------------------------------------------------------

analytical <- matrix(c(9, 26, 11, 59), 2, byrow = TRUE)

# data cleaning -----------------------------------------------------------

# data wrangling ----------------------------------------------------------

# labels ------------------------------------------------------------------

rownames(analytical) <- c("Prior surgery", "No prior surgery")
colnames(analytical) <- c("Loosening", "No loosening")

# analytical dataset ------------------------------------------------------
