% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lister.R
\docType{data}
\name{lister}
\alias{lister}
\alias{lister_four_columns}
\title{Lister data}
\format{
A data frame with 3525 rows and 2 columns.

An object of class \code{matrix} (inherits from \code{array}) with 3525 rows and 4 columns.
}
\usage{
data("lister")

data("lister_four_columns")
}
\description{
This dataset has been analyzed and provided by the listed reference. There
are around 22.000 cytosines, each of which is under two conditions. For each
cytosine under each condition, there is only one replicate. The discrete
count for each replicate can be modelled by binomial distribution, and
Fisher's exact test can be applied to assess if a cytosine is differentially
methylated. The filtered data \code{lister} contains cytosines whose
total counts for both lines are greater than 5 and whose count for each line
does not exceed 25.
}
\details{
This dataset has been taken from the
\code{\link[fdrDiscreteNull:listerdata]{fdrDiscreteNull}} package.
}
\references{
Lister, R., O'Malley, R., Tonti-Filippini, J., Gregory, B. D., Berry, C. C.,
   Millar, A. H. & Ecker, J. R. (2008). Highly integrated single-base
   resolution maps of the epigenome in arabidopsis, \emph{Cell}
   \strong{133}(3), pp. 523-536.
   \doi{https://doi.org/10.1016/j.cell.2008.03.029}
}
\keyword{datasets}
