

test_that("generator works", {
  
  test_accumulator <- generator(~ .x + 1)

  expect_equal(
    c(2, 3, 4),
    collect(test_accumulator, 1:3)
  )

  purrr::walk(
    .x = 1:1000,
    .f = function(x) {
      collect(test_accumulator, x) %>%
      testthat::expect_equal(x + 1)
    }
  )

})
