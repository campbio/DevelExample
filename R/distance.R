euclideanDist <- function(a, b, verbose = FALSE) {
  if (isTRUE(verbose)) {
    message("Calculating distance ...")
  }
  
  # Check validity of data
  .check_data(a)
  .check_data(b)
  
  # Perform calculation
  res <- sqrt(sum((a-b)^2))
  return(res)
}

.check_data <- function(input) {
  if (any(is.na(input))) {
    stop("'input' must not contain NAs")
  }
}