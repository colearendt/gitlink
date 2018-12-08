# https://blog.github.com/2008-12-19-github-ribbons/
# http://www.webdesigndev.com/20-beautiful-free-ribbon-elements-for-your-website/

#' @export
github <- function(link, position = "right", color = "white") {
  hex = color_lookup[[color]]
  htmltools::a(
    href = link,
    htmltools::img(
      style = paste(
        "position: absolute; top: 0;",
        position,
        ": 0; border: 0; z-index: 500"
        ),
      src = paste0(
        "https://s3.amazonaws.com/github/ribbons/forkme_",
        position,
        "_",
        color,
        "_",
        hex,
        ".png"),
      alt = "Fork me on GitHub"
    )
  )
}

#' @export
ribbon_github_top_left <- function(link) {
  htmltools::a(
    href = link,
    htmltools::img(
      style = "position: absolute; top: 0; left: 0; border: 0",
      src = "https://s3.amazonaws.com/github/ribbons/forkme_left_red_aa0000.png",
      alt = "Fork me on GitHub"
    )
  )
}

color_lookup <- list(
  red = "aa0000",
  green = "007200",
  darkblue = "121621",
  orange = "ff7600",
  gray = "6d6d6d",
  white = "ffffff"
)

#' @export
ribbon_github_top_right <- function(link, color = "white", hex = "ffffff") {
  htmltools::a(
    href = link,
    htmltools::img(
      style = "position: absolute; top: 0; right: 0; border: 0; z-index: 500",
      src = paste0("https://s3.amazonaws.com/github/ribbons/forkme_right_", color, "_",hex,".png"),
      alt = "Fork me on GitHub"
    )
  )
}

#<a href="https://github.com/you"><img style="position: absolute; top: 0; left: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_red_aa0000.png" alt="Fork me on GitHub"></a>
