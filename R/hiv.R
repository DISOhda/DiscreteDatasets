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
#' @format
#' \code{hiv} is a \code{data.frame} with 118 rows and the following two
#' columns:
#' \describe{
#'   \item{TypeC}{Number of test subjects with HIV type C and mutated i-th amino
#'                acid.}
#'   \item{TypeB}{Number of test subjects with HIV type B and mutated i-th amino
#'                acid.}
#' }
#' Thus, each row describes a 2x2 table:
#' \tabular{rcc}{
#'   Subject 1 \tab Mutation       \tab No mutation\cr
#'   Type C    \tab \eqn{X_{i, 1}} \tab 73 - \eqn{X_{i, 1}}\cr
#'   Type B    \tab \eqn{X_{i, 2}} \tab 73 - \eqn{X_{i, 2}}
#' }
#'
#' @note
#' The original \code{hiv} dataset has been taken from the
#' \code{\link[fdrDiscreteNull:hivdata]{fdrDiscreteNull}} package, where it is
#' named \code{hivdata}.
#'
#' @references
#' Gilbert, P. B. (2005). A modified false discovery rate multiple-comparisons
#'    procedure for discrete data, applied to human immunodeficiency virus
#'    genetics. \emph{Journal of the Royal Statistical Society}, \strong{54}(1),
#'    pp. 143-158. \doi{10.1111/j.1467-9876.2005.00475.x}
#'
#' @keywords datasets
"hiv"

#' @rdname hiv
#'
#' @usage data("hiv_four_columns")
#'
#' @format
#' \code{hiv_four_columns} is a \code{data.frame} with 118 rows and the
#' following four columns:
#' \describe{
#'   \item{TypeC.Mutation}{Number of test subjects with HIV type C and mutated
#'                         i-th amino acid.}
#'   \item{TypeB.Mutation}{Number of test subjects with HIV type B and mutated
#'                         i-th amino acid.}
#'   \item{TypeC.NoMutation}{Number of test subjects with HIV type C and
#'                           non-mutated i-th amino acid.}
#'   \item{TypeB.NoMutation}{Number of test subjects with HIV type B and
#'                           non-mutated i-th amino acid.}
#' }
#' Thus, each row describes a 2x2 table:
#' \tabular{rcc}{
#'   Subject 1 \tab mutation       \tab no mutation\cr
#'   Type C    \tab \eqn{X_{i, 1}} \tab \eqn{X_{i, 3}}\cr
#'   Type B    \tab \eqn{X_{i, 2}} \tab \eqn{X_{i, 4}}
#' }
"hiv_four_columns"
