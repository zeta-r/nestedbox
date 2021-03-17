summarize_3d <- function(db) {
  db %>%
    dplyr::summarise(
      dplyr::across(dplyr::starts_with("dim"), mean, na.rm = TRUE),
      dplyr::across(dplyr::ends_with("min"), min, na.rm = TRUE),
      dplyr::across(dplyr::ends_with("max"), max, na.rm = TRUE)
    )
}
