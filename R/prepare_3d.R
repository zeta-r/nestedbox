prepare_3d <- function(db) {
  stopifnot(
    is.list(db),
    length(db[[1L]]) == 1L,
    length(db[[2L]]) == 1L,
    length(db[[3L]]) == 1L,
    length(db) == 3L
  )

  expand.grid(
    x = c(0L, db[[1L]]),
    y = c(0L, db[[2L]]),
    z = c(0L, db[[3L]]),
    KEEP.OUT.ATTRS = FALSE, stringsAsFactors = FALSE
  )
}
