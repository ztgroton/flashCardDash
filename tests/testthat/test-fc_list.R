test_that("`fc_list` works", {

  # error messages
  err_msg_title <- "`title` must be character of length 1"
  err_msg_hsize <- "`.hsize` must be character representation of single integer between 1 & 6"
  err_msg_ltype <- "`.ltype` must be equal 'ul' or 'ol'"

  # expectd errors
  expect_error(fc_list(), "`title` is missing")
  expect_error(fc_list(title = 42), err_msg_title)
  expect_error(fc_list(title = 'mytitle', .hsize = 42), err_msg_hsize)
  expect_error(fc_list(title = 'mytitle', .hsize = '6', .ltype = 42), err_msg_ltype)

  # snapshots
  expect_snapshot(fc_list(title = 'mytitle'))
  expect_snapshot((fc_list(title = 'mytitle', 'a', 'b', 'c', .hsize = '4', .ltype = 'ol')))

})
