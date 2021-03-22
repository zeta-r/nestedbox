summarize_3d <- function(db) {

  stopifnot(
    inherits(db, "data.frame"),
    names(db) == c(
      "dim_max", "dim_min", "dim_med",
      "X_min", "Y_min", "Z_min",
      "X_max", "Y_max", "Z_max")
  )

  db <- unclass(db)

  dim_max = mean(db[["dim_max"]], na.rm = TRUE)
  dim_min = mean(db[["dim_min"]], na.rm = TRUE)
  dim_med = mean(db[["dim_med"]], na.rm = TRUE)

  X_min = min(db[["X_min"]], na.rm = TRUE)
  Y_min = min(db[["Y_min"]], na.rm = TRUE)
  Z_min = min(db[["Z_min"]], na.rm = TRUE)

  X_max = max(db[["X_max"]], na.rm = TRUE)
  Y_max = max(db[["Y_max"]], na.rm = TRUE)
  Z_max = max(db[["Z_max"]], na.rm = TRUE)

  list(
    dim_max = dim_max,
    dim_min = dim_min,
    dim_med = dim_med,
    X_min = X_min,
    Y_min = Y_min,
    Z_min = Z_min,
    X_max = X_max,
    Y_max = Y_max,
    Z_max = Z_max
  )
}
