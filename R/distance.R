#' @title Euclidean distance
#' @description Calculates Euclidean distance between two vectors. An error will be 
#' given if NAs are present in either vector.
#'
#' @param a The first vector to use in the distance calculation.
#' @param b The second vector to use in the distance calculation.
#' @param verbose Boolean. If \code{TRUE}, a message will be printed. Default \code{TRUE}.
#' @return A numeric value of a distance
#' @examples
#' euclideanDist(c(1, 2), c(2, 3), verbose = FALSE)
#' @export
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

#' @description Check for NAs
#'
#' @param input A numeric vector
#' @return Nothing returned
.check_data <- function(input) {
  if (any(is.na(input))) {
    stop("'input' must not contain NAs")
  }
}
