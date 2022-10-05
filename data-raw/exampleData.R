## code to prepare `exampleData` dataset goes here
set.seed(123)
a <- rnorm(100)
b <- rnorm(100)
exampleData <- cbind(a, b)
usethis::use_data(exampleData, overwrite = TRUE)
