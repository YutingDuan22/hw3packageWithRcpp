test_that("lrm works", {
  
  expect_equal(as.vector(lrm(as.matrix(mtcars[, -1]), mtcars$mpg)$beta), 
               as.vector(lm(mpg ~ ., data = mtcars)$coefficients))
  expect_equal(as.vector(lrm(as.matrix(mtcars[, -1]), mtcars$mpg)$y.fitted), 
               as.vector(glm(mpg ~ ., data = mtcars, family = "gaussian")$fitted.values))
})
