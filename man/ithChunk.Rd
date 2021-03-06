% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FUNCTIONS.R
\name{ithChunk}
\alias{ithChunk}
\title{index set for idx-th chunk of size chunk for n elements}
\usage{
ithChunk(idx, n, chunk = 1000)
}
\arguments{
\item{idx}{chunk index (which chunk, first is 1)}

\item{n}{total number of variants}

\item{chunk}{desired chunksize}
}
\value{
index range into variants for chunk \code{idx} (see details)
}
\description{
For proper use of this function it will return the set of variant indices
corresponding to the \code{idx}-th chunk of size \code{chunk} in \code{n} variants, taking
care of the case that the last chunk might have less than \code{n} elements.
If used with an \code{idx}-value outside the possible chunks (i.e., negative or
larger than \code{ceiling(n/chunk)}) an empty vector (\code{numeric(0)}) is returned.
}
