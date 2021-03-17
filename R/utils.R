get_sample_data <- function() {
  data_path <- system.file("testing-data/dataset_ex.rds",
                      package = "nestedbox")
  readRDS(data_path)
}
