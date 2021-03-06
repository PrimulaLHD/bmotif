test_that("positions behaves as expected",{
  expect_error(object = positions("a"), "'M' must be an object of class 'matrix'")
  expect_error(object = positions(matrix("a",3,3)), "Elements of 'M' must be numeric")
  expect_error(object = positions(matrix(-1,3,3)), "Elements of 'M' must be greater than or equal to zero")
  expect_error(object = positions(matrix(1,3,3), six_node = TRUE, level = 7, normalisation = "none"), "'level' must be of class 'character'")
  expect_error(object = positions(matrix(1,3,3), six_node = TRUE, level = "wrong", normalisation = "none"), "'level' must equal 'rows', 'columns' or 'all'")
  expect_error(object = positions(matrix(1,3,3), six_node = TRUE, level = "all", normalisation = 7), "'normalisation' must be of class 'character'")
  expect_error(object = positions(matrix(1,3,3), six_node = TRUE, level = "all", normalisation = "wrong"), "'normalisation' must equal 'none', 'sum' or 'size class'")

  expect_equal(positions(M = mat, six_node = TRUE, level = "all", normalisation = "none"),positions_T_all_none)
  expect_equal(positions(M = mat, six_node = TRUE, level = "all", normalisation = "sum"), positions_T_all_sum)
  expect_equal(positions(M = mat, six_node = TRUE, level = "all", normalisation = "size class"), positions_T_all_sc)
  expect_equal(positions(M = mat, six_node = TRUE, level = "rows", normalisation = "none"), positions_T_rows_none)
  expect_equal(positions(M = mat, six_node = TRUE, level = "rows", normalisation = "sum"), positions_T_rows_sum)
  expect_equal(positions(M = mat, six_node = TRUE, level = "rows", normalisation = "size class"), positions_T_rows_sc)
  expect_equal(positions(M = mat, six_node = TRUE, level = "columns", normalisation = "none"), positions_T_columns_none)
  expect_equal(positions(M = mat, six_node = TRUE, level = "columns", normalisation = "sum"), positions_T_columns_sum)
  expect_equal(positions(M = mat, six_node = TRUE, level = "columns", normalisation = "size class"), positions_T_columns_sc)
  expect_equal(positions(M = mat, six_node = FALSE, level = "all", normalisation = "none"), positions_F_all_none)
  expect_equal(positions(M = mat, six_node = FALSE, level = "all", normalisation = "sum"), positions_F_all_sum)
  expect_equal(positions(M = mat, six_node = FALSE, level = "all", normalisation = "size class"), positions_F_all_sc)
  expect_equal(positions(M = mat, six_node = FALSE, level = "rows", normalisation = "none"), positions_F_rows_none)
  expect_equal(positions(M = mat, six_node = FALSE, level = "rows", normalisation = "sum"), positions_F_rows_sum)
  expect_equal(positions(M = mat, six_node = FALSE, level = "rows", normalisation = "size class"), positions_F_rows_sc)
  expect_equal(positions(M = mat, six_node = FALSE, level = "columns", normalisation = "none"), positions_F_columns_none)
  expect_equal(positions(M = mat, six_node = FALSE, level = "columns", normalisation = "sum"), positions_F_columns_sum)
  expect_equal(positions(M = mat, six_node = FALSE, level = "columns", normalisation = "size class"), positions_F_columns_sc)
})
