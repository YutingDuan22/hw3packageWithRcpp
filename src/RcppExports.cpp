// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// R2
double R2(NumericVector fitted, NumericVector truth);
RcppExport SEXP _hw3packageWithRcpp_R2(SEXP fittedSEXP, SEXP truthSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type fitted(fittedSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type truth(truthSEXP);
    rcpp_result_gen = Rcpp::wrap(R2(fitted, truth));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_hw3packageWithRcpp_R2", (DL_FUNC) &_hw3packageWithRcpp_R2, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_hw3packageWithRcpp(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
