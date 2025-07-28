#' @title
#' Excerpt of aggregated data of the International Mouse Phenotyping Consortium
#'
#' @docType data
#'
#' @description
#' The **International Mouse Phenotyping Consortium** (IMPC) aims to analyse the
#' phenotypes of the mouse to create a comprehensive functional catalogue of its
#' genome. This is to be achieved by generating knockout mouse lines for every
#' protein-encoding gene. The ultimate goal is to gain insight in gene function
#' and its role e.g. in disease in order to develop new research approaches and
#' therapies. For this, standardised data is collected and freely accessible
#' via the consortium's website (see Source section)
#'
#' This dataset contains an excerpt of the results of 5,000 aggregated
#' experiments on male and female mice about 1,100 knockout genes, conducted by
#' 10 different phenotyping centers up to December 2015.
#'
#' @usage data("impc2015_excerpt")
#'
#' @format
#' \code{impc2015_excerpt} is a \code{data.frame} with 5,000 rows representing
#' experiments with the following ten columns:
#' \describe{
#'   \item{Organisation.Name}{Name of the phenotyping organisation that
#'                            conducted the experiment}
#'   \item{Gene.Symbol}{Name of the relevant knockout gene}
#'   \item{Female.Control.Typical}{Number of typical female mice in the control
#'                                 group}
#'   \item{Female.Control.Atypical}{Number of female mice in the control group
#'                                  exhibiting abnormalities}
#'   \item{Female.Mutant.Typical}{Number of female mice in the experimental
#'                                group}
#'   \item{Female.Mutant.Atypical}{Number of female mice in the experimental
#'                                 group exhibiting abnormalities}
#'   \item{Male.Control.Typical}{Number of typical male mice in the control
#'                               group}
#'   \item{Male.Control.Atypical}{Number of male mice in the control group
#'                                exhibiting abnormalities}
#'   \item{Male.Mutant.Typical}{Number of male mice in the experimental group}
#'   \item{Male.Mutant.Atypical}{Number of female mice in the experimental group
#'                               exhibiting abnormalities}
#' }
#' Thus, each line describes two 2x2 tables (one for each sex), e.g.:
#' \tabular{rcc}{
#'   Female mice        \tab Typical        \tab With abnormalities\cr
#'   Control group      \tab \eqn{X_{i, 3}} \tab \eqn{X_{i, 5}}\cr
#'   Experimental group \tab \eqn{X_{i, 4}} \tab \eqn{X_{i, 6}}
#' }
#' and
#' \tabular{rcc}{
#'   Male mice        \tab Typical        \tab With abnormalities\cr
#'   Control group      \tab \eqn{X_{i, 7}} \tab \eqn{X_{i,  9}}\cr
#'   Experimental group \tab \eqn{X_{i, 8}} \tab \eqn{X_{i, 10}}
#' }
#'
#' @details
#' This data is derived from a dataset used in Karp et al. (2017) (see
#' References). The original data was collected by the IMPC.
#'
#' @source
#' \href{https://zenodo.org/records/260398}{Dataset of Karp et al. (2017)}\cr
#' \href{https://www.mousephenotype.org/data}{IMPC data}
#'
#' @references
#' N. A. Karp et al. (2017). Prevalence of sexual dimorphism in mammalian
#'    phenotypic traits. *Nature Communications*, **8**, 15475.
#'    \doi{10.1038/ncomms15475}
#'
#' @keywords datasets
"impc2015_excerpt"
