data("airway", package = "airway")
airway <- as.data.frame(assay(airway))
usethis::use_data(airway, overwrite = TRUE)

airway <- as.data.frame(
  cbind(
    Treatment = rowSums(airway[c(1, 3, 5, 7)]),
    Control   = rowSums(airway[c(2, 4, 6, 8)])
  )
)
usethis::use_data(airway, overwrite = TRUE)

airway_four_columns <- DiscreteDatasets::reconstruct_two(
  airway,
  colnames_append = c("ThisGene", "AllOtherGenes"),
  colnames_sep = "."
)
usethis::use_data(airway_four_columns, overwrite = TRUE)
