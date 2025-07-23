library(IMPCdata)

organisations <- unlist(getPhenCenters())
pipelines <- sapply(organisations, getPipelines)
procedures <- sapply(organisations, function(org) {
  sapply(pipelines[[o]], getProcedures, PhenCenterName = org)
})
parameters <- sapply(organisations, function(org) {
  sapply(pipelines[[org]], function(pipe) {
    sapply(
      X = procedures[[org]][[pipe]],
      FUN = getParameters,
      PhenCenterName = org,
      PipelineID = pipe,
      simplify = FALSE
    )
  }, simplify = FALSE)
}, simplify = FALSE)
alleles <- sapply(organisations, function(org) {
  sapply(pipelines[[org]], function(pipe) {
    sapply(seq_along(procedures[[org]][[pipe]]), function(procID) {
      sapply(
        X = parameters[[org]][[pipe]][[procID]],
        FUN = getAlleles,
        PhenCenterName = org,
        PipelineID = pipe,
        ProcedureID = procedures[[org]][[pipe]][[procID]],
        simplify = FALSE
      )
    }, simplify = FALSE)
  }, simplify = FALSE)
}, simplify = FALSE)

options(timeout = 9999)

nums <- sapply(organisations, function(org) rjson::fromJSON(paste(readLines(paste("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:\"", gsub(" ", "%20", org), "\"%20AND%20observation_type:categorical&rows=0", sep = "")), collapse = ""))$response$numFound)

rjson::fromJSON(paste(readLines("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:\"MRC%20Harwell\"%20AND%20pipeline_stable_id:HRWL_001%20AND%20procedure_stable_id:IMPC_CSD_003%20AND%20parameter_stable_id:IMPC_CSD_034_001%20AND%20gene_accession_id:\"MGI:3583900\"%20AND%20observation_type:categorical&rows=0"), collapse = ""))
rjson::fromJSON(paste(readLines("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:\"MRC%20Harwell\"%20AND%20pipeline_stable_id:HRWL_001%20AND%20procedure_stable_id:IMPC_CSD_003%20AND%20parameter_stable_id:IMPC_CSD_034_001%20AND%20observation_type:categorical%20AND%20biological_sample_group:control&rows=0"), collapse = ""))

dat <- download.file(paste("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:\"", organisations[1], "\"&rows=", nums[1], "&wt=csv", sep = ""), paste0(organisations[1], ".csv"))

rjson::fromJSON(paste(readLines("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:\"MRC%20Harwell\"%20AND%20pipeline_stable_id:HRWL_001%20AND%20procedure_stable_id:IMPC_CSD_003%20AND%20parameter_stable_id:*%20AND%20observation_type:categorical%20AND%20biological_sample_group:*%20AND%20sex:*%20AND%20procedure_group:*&rows=1"), collapse = ""))
dat <- read.csv("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:\"MRC%20Harwell\"%20AND%20pipeline_stable_id:HRWL_001%20AND%20procedure_stable_id:IMPC_CSD_003%20AND%20parameter_stable_id:*%20AND%20observation_type:categorical%20AND%20biological_sample_group:*%20AND%20sex:*%20AND%20procedure_group:*&rows=1566010&wt=csv")

dat %>% filter(date_of_experiment < "2015-11-17") %>% count(parameter_stable_id, gene_symbol, biological_sample_group, sex)

num <- rjson::fromJSON(paste(readLines("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:*%20AND%20pipeline_stable_id:*%20AND%20procedure_stable_id:*%20AND%20parameter_stable_id:*%20AND%20observation_type:categorical%20AND%20biological_sample_group:*%20AND%20sex:*%20AND%20procedure_group:*&rows=0"), collapse = ""))$response$numFound
dat_cat <- read.csv(paste0("https://www.ebi.ac.uk/mi/impc/solr/experiment/select?q=phenotyping_center:*%20AND%20pipeline_stable_id:*%20AND%20procedure_stable_id:*%20AND%20parameter_stable_id:*%20AND%20observation_type:categorical%20AND%20biological_sample_group:*%20AND%20sex:*%20AND%20procedure_group:*&rows=", num, "&wt=csv"))

aggregated <- dat_cat %>%
  filter(
    #date_of_experiment < "2016-11-17",
    #phenotyping_center == "MRC Harwell",
    #pipeline_stable_id == "HRWL_001",
    #procedure_group == "IMPC_CSD"
    sex %in% c("female", "male")
  ) %>%
  count(phenotyping_center, parameter_stable_id, gene_symbol, biological_sample_group, sex, category) %>%
  #group_by(procedure_stable_id) %>%
  filter(
    any(biological_sample_group == "control"),
    any(biological_sample_group == "experimental"),
    .by = c(phenotyping_center, parameter_stable_id)
  ) %>%
  filter(
    any(sex == "female") &
    any(sex == "male"),
    .by = c(phenotyping_center, parameter_stable_id, gene_symbol, biological_sample_group)
  ) %>%
  filter(startsWith(parameter_stable_id, "IMPC_CSD_003"))
