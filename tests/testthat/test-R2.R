test_that("R2 works", {
  set.seed(0)
  x = 1:1000
  y = 5*x + rnorm(1000, 0, 1000)
  fit = lm(y ~ x)
  expect_equal(R2(fit$fitted.values, y),
               MLmetrics::R2_Score(fit$fitted.values, y))
})