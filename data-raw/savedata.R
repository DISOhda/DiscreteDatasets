# hiv <- read.table("data-raw/Gilbert.txt", header = FALSE, skip = 1)
# names(hiv) <- c("TypeC", "TypeB")
# usethis::use_data(hiv, overwrite = TRUE)

# hiv_four_columns <- cbind(hiv, 73L - hiv)
# names(hiv_four_columns) <- paste(names(hiv), rep(c("Mutation", "NoMutation"), rep(2, 2)), sep = ".")
# usethis::use_data(hiv_four_columns, overwrite = TRUE)

# library(FDX)
# data("amnesia")
# rownames(amnesia) <- as.character(amnesia[, 1])
# amnesia <- amnesia[, 2:3]
# usethis::use_data(amnesia, overwrite = TRUE)
#
# A11 <- amnesia[, 1]
# A12 <- amnesia[, 2]
# A21 <- sum(A11) - A11
# A22 <- sum(A12) - A12
# amnesia_four_columns <- cbind(amnesia,
#                               AmnesiaCases.AllOtherDrugs = A21,
#                               OtherAdverseCases.AllOtherDrugs = A22)
# colnames(amnesia_four_columns)[1:2] <- paste(colnames(amnesia_four_columns[1:2]), "ThisDrug", sep = ".")
#
# usethis::use_data(amnesia_four_columns, overwrite = TRUE)

# data("listerdata", package = "fdrDiscreteNull")
# listerdata <- as.data.frame(listerdata)
# for(i in 1:2) listerdata[, i] <- as.integer(listerdata[, i])
# usethis::use_data(listerdata, overwrite = TRUE)

# listerdata_four_columns <- cbind(listerdata, 34244L - listerdata[, 1], 39342L - listerdata[, 2])
# names(listerdata_four_columns) <- paste(names(listerdata), rep(c("ThisCyto", "AllOtherCytos"), rep(2, 2)), sep = ".")
# usethis::use_data(listerdata_four_columns, overwrite = TRUE)

# disorderdetection = data.frame(hu, gg)
# colnames(disorderdetection) = c("observed frequencies", "expected frequencies")
# usethis::use_data(disorderdetection)
