## code to prepare `example_data` dataset goes here

set.seed(123)
a <- rnorm(100)
b <- rnorm(100)
example_data <- cbind(a, b)
usethis::use_data(example_data, overwrite = TRUE)