#' @title
#' Excerpt of aggregated data of the International Mouse Phenotyping Consortium
#'
#' @docType data
#'
#' @description
#' The **International Mouse Phenotyping Consortium** (IMPC) aims to identify
#' the function of every gene in the mouse genome. It spearheads the whole
#' process from lab studies to data distribution. For each protein-encoding gene
#' of interest, an *in vivo* study takes place to obtain mutant and non-mutant
#' mice, the mutant mice being the one where a specific gene is knocked out at
#' the embryo stage. A wide range of phenotypic traits covering multiple
#' physiological systems, such as visual and neurological phenotypes, are then
#' measured in these mice to better understand the biological function of the
#' knocked-out gene. The collected data is standardised and freely accessible
#' via the consortium's website (see *Source* section).
#'
#' This dataset contains an excerpt of the results of 5,000 aggregated
#' experiments on male and female mice about 1,692 knockout genes, conducted by
#' 10 different phenotyping centres up to December 2015.
#'
#' @usage
#' data("impc2015_excerpt")
#'
#' @format
#' `impc2015_excerpt` is a `data.frame` with 5,000 rows representing experiments
#' with the following ten columns:
#' \describe{
#'   \item{**`Organisation.Name`**}{
#'     Name of the phenotyping organisation that conducted the experiment
#'   }
#'   \item{**`Gene.Symbol`**}{
#'     Name of the relevant knockout gene
#'   }
#'   \item{**`Female.Mutant.Atypical`**}{
#'     Number of female mice in the experimental group
#'     **exhibiting abnormalities**
#'   }
#'   \item{**`Female.Mutant.Typical`**}{
#'     Number of **typical** female mice in the experimental group
#'   }
#'   \item{**`Female.Control.Atypical`**}{
#'     Number of female mice in the control group
#'     **exhibiting abnormalities**
#'   }
#'   \item{**`Female.Control.Typical`**}{
#'     Number of **typical** female mice in the control group
#'   }
#'   \item{**`Male.Mutant.Atypical`**}{
#'     Number of female mice in the experimental group
#'     **exhibiting abnormalities**
#'   }
#'   \item{**`Male.Mutant.Typical`**}{
#'     Number of **typical** male mice in the experimental group
#'   }
#'   \item{**`Male.Control.Atypical`**}{
#'     Number of male mice in the control group **exhibiting abnormalities**
#'   }
#'   \item{**`Male.Control.Typical`**}{
#'     Number of **typical** male mice in the control group
#'   }
#' }
#' Thus, each line describes two 2x2 tables (one for each sex), e.g.:
#' \tabular{rcc}{
#'   Female mice        \tab With abnormalities \tab Typical \cr
#'   Experimental group \tab \eqn{X_{i, 3}}     \tab \eqn{X_{i, 4}} \cr
#'   Control group      \tab \eqn{X_{i, 5}}     \tab \eqn{X_{i, 6}}
#' }
#' and
#' \tabular{rcc}{
#'   Male mice          \tab With abnormalities \tab Typical \cr
#'   Experimental group \tab \eqn{X_{i, 7}}     \tab \eqn{X_{i,  8}} \cr
#'   Control group      \tab \eqn{X_{i, 9}}     \tab \eqn{X_{i, 10}}
#' }
#'
#' @details
#' This data is derived from a dataset used in Karp et al. (2017) (see
#' *References* section). The original data was collected by the IMPC.
#'
#' @source
#' [Dataset of Karp et al. (2017)](https://zenodo.org/records/260398) \cr
#' [IMPC data](https://www.mousephenotype.org/data)
#'
#' @references
#' N. A. Karp et al. (2017). Prevalence of sexual dimorphism in mammalian
#'   phenotypic traits. *Nature Communications*, **8**, 15475.
#'   \doi{10.1038/ncomms15475}
#'
#' @keywords datasets
"impc2015_excerpt"
