#hiv <- read.table("data-raw/Gilbert.txt", header = FALSE, skip = 1)
#names(hiv) <- c("No.Mutation", "Mutation")
#usethis::use_data(hiv, overwrite = TRUE)

#library(FDX)
#amnesia <- amnesia[, 2:3]
#usethis::use_data(amnesia)

#data("airway", package = "airway")
#airway <- as.data.frame(assay(airway))
usethis::use_data(airway, overwrite = TRUE)

#library(fdrDiscreteNull)
#data("listerdata", package = "fdrDiscreteNull")
#usethis::use_data(lister, overwrite = TRUE)

#------------------------------
#library(DiscreteDataSets)
#c = NULL
#for (entry in listerdata[,1]){
#  entry = 34244 - entry
#  c = rbind(c, entry)
#}
#data = cbind(listerdata, c)
#
#d = NULL
#for (entry in listerdata[,2]){
#  entry = 39342 - entry
#  d = rbind(d, entry)
#}
#lister_four_columns = cbind(data, d)

#usethis::use_data(lister_four_columns, overwrite = TRUE)

#disorderdetection = data.frame(hu, gg)
#colnames(disorderdetection) = c("observed frequencies", "expected frequencies")
#usethis::use_data(disorderdetection)
