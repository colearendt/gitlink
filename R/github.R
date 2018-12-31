# https://blog.github.com/2008-12-19-github-ribbons/
# http://www.webdesigndev.com/20-beautiful-free-ribbon-elements-for-your-website/

#' @export
ribbon_css <- function(link, position = "right", color = "white") {
  css_ribbon <- htmltools::css(
    "background-color" = "#a00",
    "overflow" = "hidden",
    "white-space" = "nowrap",
    "position" = "absolute",
    "left" = "-50px",
    "top" = "40px",
    "transform" = "rotate(-45deg)"
  )
  css_a <- htmltools::css(
    "border" = "1px solid #faa",
    "color" = "#fff",
    "display" = "block",
    "font" = "bold 81.25% 'Helvetica Neue', Helvetica, Arial, sans-serif",
    "margin" = "1px 0",
    "padding" = "10px 50px",
    "text-align" = "center",
    "text-decoration" = "none"
  )
  html_prep <- htmltools::div(
    class = "ribbon",
    style = css_ribbon,
    htmltools::a(href = link, "Fork me on GitHub", style = css_a))
  return(html_prep)
}

#' @export
ribbon_github <- function(link, position = "right", color = "white") {
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
