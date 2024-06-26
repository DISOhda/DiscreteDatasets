#' @title
#' Lister data
#'
#' @docType data
#'
#' @description
#' This dataset has been analyzed and provided by the listed reference. There
#' are around 22,000 cytosines, each of which is under two conditions. For each
#' cytosine under each condition, there is only one replicate. The discrete
#' count for each replicate can be modeled by binomial distribution, and
#' Fisher's exact test can be applied to assess if a cytosine is differentially
#' methylated. The filtered data \code{lister} contains cytosines whose
#' total counts for both lines are greater than 5 and whose count for each line
#' does not exceed 25.
#'
#' @usage data("listerdata")
#'
#' @format
#' \code{listerdata} is a \code{data.frame} with 3,525 rows and the following two
#' columns:
#' \describe{
#'   \item{Col0_Counts}{Degree of methylation of the i-th cytosine in reference
#'                      genome.}
#'   \item{Met13_Counts}{Degree of methylation of the i-th cytosine in mutated
#'                       genome.}
#' }
#' Thus, each row describes a 2x2 table:
#' \tabular{rcc}{
#'   AT1G01070.1  \tab This cytosine  \tab All other cytosines\cr
#'   Col0 counts  \tab \eqn{X_{i, 1}} \tab 34,244 - \eqn{X_{i, 1}}\cr
#'   Met13 counts \tab \eqn{X_{i, 2}} \tab 39,342 - \eqn{X_{i, 2}}
#' }
#'
#' @note
#' The original \code{listerdata} dataset has been taken from the
#' \code{\link[fdrDiscreteNull:listerdata]{fdrDiscreteNull}} package.
#'
#' @references
#' Lister, R., O'Malley, R., Tonti-Filippini, J., Gregory, B. D., Berry, C. C.,
#'    Millar, A. H. & Ecker, J. R. (2008). Highly integrated single-base
#'    resolution maps of the epigenome in arabidopsis, \emph{Cell}
#'    \strong{133}(3), pp. 523-536.
#'    \doi{https://doi.org/10.1016/j.cell.2008.03.029}
#'
#' @keywords datasets
"listerdata"

#' @rdname listerdata
#'
#' @usage data("listerdata_four_columns")
#'
#' @format
#' \code{listerdata_four_columns} is a \code{data.frame} with 3,525 rows and the
#' following four columns:
#' \describe{
#'   \item{Col0_Counts.ThisCyto}{Degree of methylation of the i-th cytosine in
#'                               reference genome.}
#'   \item{Met13_Counts.ThisCyto}{Degree of methylation of the i-th cytosine in
#'                                mutated genome.}
#'   \item{Col0_Counts.AllOtherCytos}{Degree of methylation of all other
#'                                    cytosines in reference genome.}
#'   \item{Met13_Counts.AllOtherCytos}{Degree of methylation of all other
#'                                     cytosines in mutated genome.}
#' }
#' \tabular{rcc}{
#'   AT1G01070.1  \tab This cytosine  \tab All other cytosines\cr
#'   Col0 counts  \tab \eqn{X_{i, 1}} \tab \eqn{X_{i, 3}}\cr
#'   Met13 counts \tab \eqn{X_{i, 2}} \tab \eqn{X_{i, 4}}
#' }
"listerdata_four_columns"
