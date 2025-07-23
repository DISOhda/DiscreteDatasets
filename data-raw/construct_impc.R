library(dplyr)

# load dataset with all rows
load("data-raw/impc2015.RData")

# find first 3000 rows such that distribution of phenotyping centers is preserved
k <- 3000
n <- table(IMPC_sel$Organisation.Name)
m <- round(n / sum(n) * k)
orgs  <- unique(IMPC_sel$Organisation.Name)
idx_orgs <- lapply(orgs, function(org) which(IMPC_sel$Organisation.Name == org))
rows <- idx_orgs |>
  seq_along() |>
  lapply(function(i) idx_orgs[[i]][seq_len(m[i])]) |>
  unlist() |>
  sort()

# select rows and keep only organisations, genes and numbers
impc2015_excerpt <- IMPC_sel[rows, -(2:5)]

# check if distribution of genes is also preserved
#p_sel  <- prop.table(table(impc2015_excerpt$Gene.Symbol))
p_full <- prop.table(table(IMPC_sel$Gene.Symbol))
p_sel <- p_full
p_sel[] <- 0
genes <- sort(unique(impc2015_excerpt$Gene.Symbol))
p_sel[genes] <- prop.table(table(impc2015_excerpt$Gene.Symbol))
#p_sel <- p_sel2
chisq.test(p_sel, p = p_full) # p.value = 1

# save final dataset in data folder
usethis::use_data(impc2015_excerpt, overwrite = TRUE)




# OLD
# IMPC_sel %>%
#   filter(Gene.Symbol == "Elmod1", Organisation.Name == "MRC Harwell") %>%
#   arrange(Parameter.Id)
#
# IMPC_full %>%
#   select(
#     Organisation.Name,   Pipeline.Id,          Procedure.Id,
#     Parameter.Id,        Experimental.Id,      Gene.Symbol,
#     Female.Mutant.Count, Female.Control.Count, Fem_AbRateWT,  Fem_AbRateKO,
#     Male.Mutant.Count,   Male.Control.Count,   Male_AbRateWT, Male_AbRateKO,
#   ) %>%
#   filter(Gene.Symbol == "Elmod1", Organisation.Name == "MRC Harwell") %>%
#   arrange(desc(Female.Control.Count), Parameter.Id) %>%
#   "["(c(1:4, 8, 12)) %>%
#   distinct() %>% print(n = 123)
