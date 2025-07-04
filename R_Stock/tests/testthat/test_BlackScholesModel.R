library(testthat)
source("../../OptionsFunctions.R")

test_that("BlackScholesModel returns expected call price", {
  expect_equal(
    BlackScholesModel("c", 100, 100, 0.05, 1, 0.2),
    10.45,
    tolerance = 0.01
  )
})

test_that("BlackScholesModel returns expected put price", {
  expect_equal(
    BlackScholesModel("p", 100, 100, 0.05, 1, 0.2),
    5.57,
    tolerance = 0.01
  )
})
