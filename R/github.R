# https://blog.github.com/2008-12-19-github-ribbons/
# http://www.webdesigndev.com/20-beautiful-free-ribbon-elements-for-your-website/

#' @export
ribbon_css <- function(link, position = c("left","right"), color = "white", font_color = "black", border_color = "white", text = "Fork me on GitHub", ..., link_css = list(), parent_css = list()) {
  ribbon_css <- rlang::list2(...)
  # calculate location based on position
  if (length(position) > 1) {
    position <- "right"
  }
  if (position == "right") {
    location <- list(right = "-50px", transform = "rotate(45deg)")
    parent_location <- list(right = "0px")
  } else if (position == "left") {
    location <- list(left = "-50px", transform = "rotate(-45deg)")
    parent_location <- list(left = "0px")
  } else {
    stop(sprintf("Unrecognized position: %s", position))
  }

  css_ribbon_parent <- do.call(
    htmltools::css,
    c(list(
      "position" = "absolute",
      "top" = "0px",
      "overflow" = "hidden",
      "width" = "150px",
      "height" = "150px"
      ),
    parent_location,
    parent_css
    )
  )
  css_ribbon <- do.call(
    htmltools::css,
    args = c(list(
    "background-color" = color,
    "overflow" = "hidden",
    "white-space" = "nowrap",
    "position" = "absolute",
    "top" = "45px",
    "box-shadow" = "0 0 10px #888"
    # clip-path: polygon(-50% -50%, 80% -50%, 105% 150%, -50% 150%);
    ),
    location,
    ribbon_css
    )
  )
  css_a <- do.call(
    htmltools::css,
    args = c(list(
    "border" = paste("1px solid", border_color),
    "color" = font_color,
    "display" = "block",
    "font" = "bold 95% 'Collegiate', Arial, sans-serif",
    "margin" = "1px 0",
    "padding" = "6px 50px",
    "text-align" = "center",
    "text-decoration" = "none",
    "letter-spacing" = "-0.3px"
    ),
    link_css)
    #"text-shadow" = "0 0 5px #444"
  )
  html_prep <- htmltools::div(
    class = "ribbon-parent",
    style = css_ribbon_parent,
    htmltools::div(
      class = "ribbon",
      style = css_ribbon,
      htmltools::a(href = link, text, style = css_a)
      )
  )
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
