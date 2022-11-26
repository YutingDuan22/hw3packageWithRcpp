#' @name lrm
#' @title Fitting Multinear Regression Model
#' @description 
#' Give coefficients and fitted value of generalized linear models.
#' The link function include identity, logit and log function.
#' @param X A matrix of all the covariates, the one column no included.
#' @param y A vector of observed response.
#' @return A list of coefficients and fitted value.
#' @examples 
#' \dontrun{
#' X = as.matrix(mtcars[,-1])
#' y = mtcars[,1]
#' lrm(X, y)
#' }
#' @import methods
#' @import bench
#' @useDynLib "hw3packageWithRcpp", .registration = TRUE
#' @export 
#' @exportPattern "^[[:alpha:]]+"
lrm <- function(X, y) {
  if (nrow(X) != length(y)) {
    stop("Dimensions are not matched!")
  }
  
  n = nrow(X)
  X = cbind(rep(1, n), X)
  
  beta = solve(t(X) %*% X) %*% t(X) %*% y
  
  
  y.fitted = X %*% beta
  
  
  
  return(list(beta = beta, y.fitted = y.fitted))
  
}
