#' @title
#' Amnesia and other drug reactions in the MHRA pharmacovigilance spontaneous
#' reporting system
#'
#' @docType data
#'
#' @description
#' For each of 2446 drugs in the MHRA database (column 1), the number of cases
#' with amnesia as an adverse event (column 2), and the number of cases with
#' other adverse event for this drug (column 3). In total, 682648 adverse drug
#' reactions were reported, among them 2044 cases of amnesia.
#'
#' @usage data("amnesia")
#'
#' @format A data frame with 2446 rows representing drugs with the following 3 columns:
#' \describe{
#'   \item{AmnesiaCases}{Number of the amnesia cases reported for the drug.}
#'   \item{OtherAdverseCases}{Number of other adverse drug reactions reported for the drug.}
#' }
#'
#' @details
#' The data was collected from the Drug Analysis Prints published
#' by the Medicines and Healthcare products Regulatory Agency (MHRA),
#' by Heller & Gur. See references for more details.

#' @source
#' \href{https://yellowcard.mhra.gov.uk/idap}{Drug Analysis Prints on MHRA site}
#'
#' @references
#' R. Heller and H. Gur (2011). False discovery rate controlling procedures for
#'    discrete tests. arXiv preprint arXiv:1112.4627v2
#'    \href{https://arxiv.org/abs/1112.4627v2}{link}.
#'
#' @keywords datasets
"amnesia"
