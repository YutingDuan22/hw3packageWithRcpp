#' @name R2
#' @title Compute R squared
#' @description 
#' Give R squared according to fitted value and true value using inline rcpp.
#' @param fitted A vector of numeric value.
#' @param truth A vector of numeric value, same length with fitted.
#' @return double value of R square
#' @examples 
#' \dontrun{
#' R2(1:10, 1:10 + rnorm(10))
#' }
#' @importFrom Rcpp evalCpp
#' @importFrom MLmetrics R2_Score
#' @useDynLib "hw3packageWithRcpp", .registration = TRUE 
#' @export 
Rcpp::cppFunction('double R2(NumericVector fitted, NumericVector truth) {

  int n = truth.size();
  double R2 = 0;

  double SSE = 0;
  double SSY = 0;

  double ybar = 0;
  for(int i = 0; i < n; ++i) {
    ybar += truth[i];
  }
  ybar = ybar / n;

  for(int i = 0; i < n; ++i) {
    SSE += pow(truth[i] - fitted[i], 2);
    SSY += pow(truth[i] - ybar, 2);
  }

  R2 = 1 - SSE / SSY;

  return R2;
}')
