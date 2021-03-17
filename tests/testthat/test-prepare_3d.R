test_that("prepare_3d accept a single row 3 column db", {
  sample_data <- get_sample_data()
  summarized_data <- summarize_3d(sample_data)

  res <- prepare_3d(summarized_data[1:3])

  expect_error(prepare_3d(sample_data), "must have a single row")
  expect_error(prepare_3d(summarized_data), "must have three columns")

  expect_named(res, c("x", "y", "z"))
})

test_that("prepare_3d returns a tibble", {
  sample_data <- get_sample_data()
  summarized_data <- summarize_3d(sample_data)[1:3]

  expect_s3_class(prepare_3d(summarized_data), "tbl_df")
})

test_that("prepare_3d returns 8 rows", {
  sample_data <- get_sample_data()
  summarized_data <- summarize_3d(sample_data)[1:3]

  res <- prepare_3d(summarized_data)

  expect_length(res, 3L)
  expect_equal(nrow(res), 8L)
})

test_that("prepare_3d return correct data", {
  sample_data <- get_sample_data()
  summarized_data <- summarize_3d(sample_data)[1:3]

  res <- prepare_3d(summarized_data)
  expected_x <- rep(c(0, summarized_data[[1]]), 4)
  expected_y <- rep(c(0, summarized_data[[2]]), each = 2, times = 2)
  expected_z <- rep(c(0, summarized_data[[3]]), each = 4)

  expect_equal(res[["x"]], expected_x)
  expect_equal(res[["y"]], expected_y)
  expect_equal(res[["z"]], expected_z)
})

