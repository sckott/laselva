skip_on_cran()
skip_on_ci() # skipping temporarily, FIA down apparently

# set cache path to a temp dir
laselva_cache$cache_path_set(full_path = "../files")

test_that("ls_fetch_usa", {
  vcr::use_cassette("ls_fetch_usa", {
    x <- ls_fetch_usa(state = "MP")
  })
  expect_is(x, "list")
  expect_named(x, "MP_tree")
  expect_is(x$MP_tree, "data.frame")
  expect_is(x$MP_tree, "tbl")
})

test_that("ls_fetch_usa fails well", {
  expect_error(ls_fetch_usa(), "\"state\" is missing")
  expect_error(ls_fetch_usa("MP", 23), "not TRUE")
})
