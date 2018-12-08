
# https://blog.github.com/2008-12-19-github-ribbons/
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

#<a href="https://github.com/you"><img style="position: absolute; top: 0; left: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_red_aa0000.png" alt="Fork me on GitHub"></a>
