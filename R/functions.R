
#' @title Hello world
#' @description A simple function to print Hello world
#'
#' @param withExcitement Boolean. If \code{TRUE}, then the message
#' will be printed with exlamation points. Default \code{TRUE}.
#' @return A string with the hello world text
#' @examples
#' hello(withExcitement = TRUE)
#' @export
hello <- function(withExcitement = TRUE) {
  if (isTRUE(withExcitement)) {
    str <- "Hello world!!!"
  } else {
    str <- "Hello world."
  }
  return(str)
  }
