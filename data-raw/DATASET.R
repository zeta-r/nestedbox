## code to prepare `DATASET` dataset goes here

stopifnot(requireNamespace("here", quietly = TRUE))
stopifnot(requireNamespace("readr", quietly = TRUE))
stopifnot(requireNamespace("usethis", quietly = TRUE))


dataset_ex <- readr::read_csv(here::here("data-raw", "dataset_ex.csv"))

usethis::use_data(dataset_ex, overwrite = TRUE)
