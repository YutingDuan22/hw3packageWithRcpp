% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R2.R
\name{R2}
\alias{R2}
\title{Compute R squared}
\arguments{
\item{fitted}{A vector of numeric value.}

\item{truth}{A vector of numeric value, same length with fitted.}
}
\value{
double value of R square
}
\description{
Give R squared according to fitted value and true value using inline rcpp.
}
\examples{
\dontrun{
R2(1:10, 1:10 + rnorm(10))
}
}
