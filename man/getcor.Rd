% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EPIBLASTER.R
\name{getcor}
\alias{getcor}
\title{Get correlation matrix}
\usage{
getcor(A = NULL, B = NULL, method = "pearson", ...)
}
\arguments{
\item{A}{is a matrix or data.frame.}

\item{B}{is a matrix or data.frame.}

\item{method}{a character string indicating which correlation coefficient is to be computed.
Current version only supports "pearson" correlation.}

\item{...}{not used.}
}
\value{
correlation matrix
}
\description{
Fast calculation of correlation matrix on CPU
(the idea is from \pkg{WGCNA} fast function for pearson correlations)
}
\examples{
set.seed(123)
A <- matrix(rnorm(100, mean = 5, sd = 10), ncol = 10)
B <- matrix(rnorm(200, mean = 10, sd = 100), ncol = 20)
C <- getcor(A, B)
}
\author{
Beibei Jiang \email{beibei_jiang@psych.mpg.de}
}
