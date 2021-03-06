% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EPIBLASTER.R
\name{epiblaster1geno}
\alias{epiblaster1geno}
\title{Parallelized calculation of the difference of correlation coefficients and compute \eqn{Z} test with one genotype input}
\usage{
epiblaster1geno(geno, pheno, chunk = 1000, zpthres = 1e-05,
  outfile = "NONE", suffix = ".txt", ...)
}
\arguments{
\item{geno}{is the normalized genotype data. It can be a matrix or a dataframe, or a big.matrix object (from \pkg{bigmemory}. 
The columns contain the information of variables and the rows contain the information of samples.}

\item{pheno}{a vector containing the binary phenotype information (case/control). The values are either 0 (control) or 1 (case).}

\item{chunk}{is the number of variants in each chunk. Default: 1000.}

\item{zpthres}{is the significance threshold to select variant pairs for output. Default is 1e-6.}

\item{outfile}{is the base of out filename. Default: 'NONE'.}

\item{suffix}{is the suffix of out filename. Default: '.txt'.}

\item{...}{not used.}
}
\value{
null
}
\description{
Calculate the difference of correlation coefficents between cases and controls,
conduct \eqn{Z} test for the differences (values) and choose variant pairs with the significance below the given threshold for output.
}
\examples{
# simulate some data
set.seed(123)
geno1 <- matrix(sample(0:2, size = 1000, replace = TRUE, prob = c(0.5, 0.3, 0.2)), ncol = 10)
dimnames(geno1) <- list(row = paste0("IND", 1:nrow(geno1)), col = paste0("rs", 1:ncol(geno1)))
p1 <- c(rep(0, 60), rep(1, 40))

# normalized data
geno1 <- scale(geno1)

# one genotype with case-control phenotype
epiblaster1geno(geno = geno1, 
pheno = p1,
outfile = "episcan_1geno_cc", 
suffix = ".txt", 
zpthres = 0.9, 
chunk = 10)

# take a look at the result
res <- read.table("episcan_1geno_cc.txt", 
header = TRUE, 
stringsAsFactors = FALSE)
head(res)
}
