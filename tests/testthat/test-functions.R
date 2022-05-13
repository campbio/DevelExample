library("DevelExample")

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("hello world message", {
  expect_message(message(hello()), regexp = "Hello world.")
})

test_that("hello world text with !", {
  expect_true(grepl("!", hello(withExcitement = TRUE)))
})
