prepare_3d <- function(db) {
  stopifnot(
    is.list(db),
    length(db[[1L]]) == 1L,
    length(db[[2L]]) == 1L,
    length(db[[3L]]) == 1L,
    length(db) == 3L
  )

  res <- expand.grid(
    x = c(0L, db[[1L]]),
    y = c(0L, db[[2L]]),
    z = c(0L, db[[3L]]),
    KEEP.OUT.ATTRS = FALSE, stringsAsFactors = FALSE
  )

  res[["point"]] <- LETTERS[seq_len(nrow(res))]

  res
}


add_segment <- function(scr, obj, points, col, lty = 2) {
  stopifnot(
    is.list(scr),
    names(scr) == c(
      "xyz.convert", "points3d", "plane3d", "box3d", "contour3d",
      "par.mar"
    ),
    is.data.frame(obj),
    names(obj) == c("x", "y", "z", "point"),
    is.numeric(obj[["x"]]),
    is.numeric(obj[["y"]]),
    is.numeric(obj[["z"]]),
    is.character(points),
    length(points) == 2L,
    is.character(col),
    is.numeric(lty)
  )

  scr$points3d(
    obj[obj[["point"]] %in% points, , drop = FALSE][[1]],
    obj[obj[["point"]] %in% points, , drop = FALSE][[2]],
    obj[obj[["point"]] %in% points, , drop = FALSE][[3]],
    col = col, type = "b", lty = lty
  )
}
