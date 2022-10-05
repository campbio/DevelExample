library("DevelExample")
data(exampleData)

test_that("Testing euclideanDist function", {
  res <- dist(rbind(exampleData[, 1], exampleData[, 2]))[1]
  expect_equal(euclideanDist(exampleData[, 1], exampleData[, 2]), res)

  expect_error(euclideanDist(c(1, 2), c(NA, 2)), regexp = "contain NAs")
})
