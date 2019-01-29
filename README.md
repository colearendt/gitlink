gitlink
================

Include useful GitHub links in your Shiny applications and R Markdown
documents quickly and easily with the `gitlink` package\!

For example,

``` r
# note that this does not actually work for pure markdown documents like this README
ribbon_css("https://github.com/colearendt/gitlink")
```

![demo Shiny application with "Fork Me on Github" ribbon](man/figures/gitlink-ex.png)

### Getting Started

The package is not currently on CRAN, so you can install the latest
with:

``` r
devtools::install_github("colearendt/gitlink")
```

The `ribbon_css` function is highly customizable, as you can set any color, font, font-size,
or other CSS properties with the parameters provided.
