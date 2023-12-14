#' @title
#' HIV data
#'
#' @docType data
#'
#' @description
#' This data set has been analyzed and provided by the listed reference.
#' Examined were two groups with different types of HIV (Type B and  Type C),
#' each consisting of 73 participants. Within both groups the number of
#' amino-acid mutations at each position was determined.
#'
#' @usage data("hiv")
#'
#' @format A data frame with 118 rows and two columns. Each row represents a
#' 2x2 table as follows:
#' \tabular{rcc}{
#'           \tab no mutation         \tab mutation\cr
#'   Group C \tab 73 - \eqn{X_{i, 1}} \tab \eqn{X_{i, 1}}\cr
#'   Group B \tab 73 - \eqn{X_{i, 2}} \tab \eqn{X_{i, 2}}
#' }
#'
#' @details
#' This dataset has been taken from the
#' \code{\link[fdrDiscreteNull:hivdata]{fdrDiscreteNull}} package.
#'
#' @references
#' Gilbert, P. B. (2005). A modified false discovery rate multiple-comparisons
#'    procedure for discrete data, applied to human immunodeficiency virus
#'    genetics. \emph{Journal of the Royal Statistical Society}, \strong{54}(1), pp. 143-158. \doi{10.1111/j.1467-9876.2005.00475.x}
#'
#' @keywords datasets
"hiv"
