


test_that("accumulator works", {
  
  test_accumulator <- accumulator(~ .x + .y)

  testthat::expect_equal(
    c(1, 3, 5),
    collect(test_accumulator, 3)
  )

  testthat::expect_equal(
    5,
    collect_last(test_accumulator, 3)
  )

})
