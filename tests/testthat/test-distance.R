test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


library("DevelExample")
data(example_data)

test_that("Testing euclideanDist function", {
  res <- dist(rbind(example_data[,1], example_data[,2]))[1]
  expect_equal(euclideanDist(example_data[,1], example_data[,2]), res)
  
  expect_error(euclideanDist(c(1, 2), c(NA, 2)), regexp = "contain NAs")
})