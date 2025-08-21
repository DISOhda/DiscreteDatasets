library(dplyr)
#library(tidyr)

load("data-raw/impc_karp_2017.RData")
names(IMPC_full)[1] <- "ID"
#IMPC_full <- arrange(IMPC_full, ID)

IMPC_sel <- IMPC_full %>%
  select(
    Organisation.Name,   Pipeline.Id,          Procedure.Id,
    Parameter.Id,        Experimental.Id,      Gene.Symbol,
    Female.Mutant.Count, Female.Control.Count, Fem_AbRateWT,  Fem_AbRateKO,
    Male.Mutant.Count,   Male.Control.Count,   Male_AbRateWT, Male_AbRateKO,
  ) %>%
  mutate(
    Female.Mutant.Atypical  = round(Fem_AbRateKO   * Female.Mutant.Count),
    Female.Mutant.Typical   = Female.Mutant.Count  - Female.Mutant.Atypical,
    Female.Control.Atypical = round(Fem_AbRateWT   * Female.Control.Count),
    Female.Control.Typical  = Female.Control.Count - Female.Control.Atypical,
    Male.Mutant.Atypical    = round(Male_AbRateKO  * Male.Mutant.Count),
    Male.Mutant.Typical     = Male.Mutant.Count    - Male.Mutant.Atypical,
    Male.Control.Atypical   = round(Male_AbRateWT  * Male.Control.Count),
    Male.Control.Typical    = Male.Control.Count   - Male.Control.Atypical,
    across(ends_with("ypical"), as.integer)
  ) %>%
  "["(c(1:6, 15:22))

attr(IMPC_sel, "problems") <- NULL
attr(IMPC_sel, "spec")     <- NULL

save(IMPC_sel, file = "data-raw/impc2015.RData")
