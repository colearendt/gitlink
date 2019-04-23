context("ribbon_css")

test_that("link is passed correctly", {
  res <- ribbon_css("https://thelink.example.com")
  expect_match(as.character(res), 'href="https://thelink.example.com"')
})

test_that("style is included when needed", {
  res <- ribbon_css("https://opacity.example.com", fade = TRUE)
  expect_match(as.character(res), '<div class="ribbon-parent".*>.*</div>')
  expect_match(as.character(res), "<style>.*</style>")

  res_none <- ribbon_css("https://opacity.com", fade = FALSE)
  expect_false(grepl("<style>.*</style>", as.character(res_none)))
})

test_that("text is included", {
  msg <- "Fork me Now... testing"
  res <- ribbon_css("https://text.example.com", text = msg)
  expect_match(as.character(res), paste0(">", msg, "</a>"))
})

test_that("position is configurable", {
  res_left <- ribbon_css("https://left.example.com", position = "left")
  expect_match(as.character(res_left), ";left:")
  expect_false(grepl(";right:", as.character(res_left)))

  res_right <- ribbon_css("https://right.example.com", position = "right")
  expect_match(as.character(res_right), ";right:")
  expect_false(grepl(";left:", as.character(res_right)))
})

test_that("fails on bad position", {
  expect_error(
    ribbon_css("https://invalid.example.com", position = "invalid"),
    "invalid"
  )
})

test_that("rmarkdown render works", {
  skip_if_not_installed("rmarkdown")
  skip_if_not(rmarkdown::pandoc_available())
  rmd <- rprojroot::find_testthat_root_file("rmd.Rmd")
  output <- fs::file_temp("rmd", ext = ".html")
  rmarkdown::render(rmd, output_file = output, quiet = TRUE)

  res <- readLines(output)
  expect_true(
    any(
      as.logical(
        lapply(
          res,
          function(x) {
            grep("ribbon-parent", x)
          }
        )
      )
    )
  )
})

test_that("app render works", {
  skip_if_not_installed("shiny")
  skip("test not yet implemented")
})


context("ribbon_img")

test_that("works as expected", {
  res <- ribbon_img("https://thelink.example.com")
  expect_match(as.character(res), 'href="https://thelink.example.com"')
  expect_match(as.character(res), "<img")
})

test_that("position is configurable", {
  res_left <- ribbon_img("https://left.example.com", position = "left")
  expect_match(as.character(res_left), "; left :")
  expect_false(grepl("; right :", as.character(res_left)))

  res_right <- ribbon_img("https://right.example.com", position = "right")
  expect_match(as.character(res_right), "; right :")
  expect_false(grepl("; left :", as.character(res_right)))
})

test_that("fails on bad position", {
  skip("not implemented")
  expect_error(
    ribbon_img("https://invalid.example.com", position = "invalid"),
    "invalid"
  )
})


test_that("color_lookup succeeds", {

  for (color in get_color_lookup()) {
    color_val <- get_color_lookup()[[color]]
    res_color <- ribbon_img("https://color.example.com", color = color)
    expect_match(as.character(res_color), paste(color, color_val, sep = "_"))

  }
})
