prepare_3d <- function(db) {
  stopifnot(`db must have a single row` = nrow(db) == 1L)
  stopifnot(`db must have three columns only` = ncol(db) == 3L)

  tibble::as_tibble(
    expand.grid(
      x = c(0, db[[1]]),
      y = c(0, db[[2]]),
      z = c(0, db[[3]])
    )
  )
}
