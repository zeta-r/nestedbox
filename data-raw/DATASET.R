## code to prepare `DATASET` dataset goes here

stopifnot(requireNamespace("here", quietly = TRUE))
stopifnot(requireNamespace("readr", quietly = TRUE))
stopifnot(requireNamespace("usethis", quietly = TRUE))


sample_data <- readr::read_csv(here::here("data-raw", "dataset_ex.csv"))

saveRDS(sample_data,
        file = here::here("inst", "testing-data", "dataset_ex.rds")
)
