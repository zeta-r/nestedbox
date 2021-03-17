test_that("summarize_3d ask and return a data.frame", {
  sample_data <- get_sample_data()
  expect_type(summarize_3d(sample_data), "list")
})

test_that("summarize_3d a single row", {
  sample_data <- get_sample_data()
  res <- summarize_3d(sample_data)

  expect_equal(length(res[[1]]), 1L)
  expect_equal(length(res[[2]]), 1L)
  expect_equal(length(res[[3]]), 1L)
})

test_that("summarize_3d mantain col name and class", {
  sample_data <- get_sample_data()
  res <- summarize_3d(sample_data)

  expect_equal(names(res), names(sample_data))
  expect_equal(
    lapply(res, class),
    lapply(sample_data, class)
  )
})

test_that("summarize_3d ignore NAs", {
  sample_data <- get_sample_data()
  res <- summarize_3d(sample_data)

  expect_false(any(is.na(res)))
})

test_that("summarize_3d return expected results", {
  sample_data <- get_sample_data()
  res <- summarize_3d(sample_data)

  expected_dim_med <- mean(sample_data[["dim_med"]], na.rm = TRUE)
  expect_equal(res[["dim_med"]], expected_dim_med)

  expected_X_min <- min(sample_data[["X_min"]], na.rm = TRUE)
  expect_equal(res[["X_min"]], expected_X_min)

  expected_Z_max <- max(sample_data[["Z_max"]], na.rm = TRUE)
  expect_equal(res[["Z_max"]], expected_Z_max)
})

