#include <Rcpp.h>
using namespace Rcpp;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
double R2(NumericVector fitted, NumericVector truth) {
  
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
}

// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
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

*/
