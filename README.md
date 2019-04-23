gitlink
================

[![Travis build status](https://travis-ci.org/colearendt/gitlink.svg?branch=master)](https://travis-ci.org/colearendt/gitlink)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/colearendt/gitlink?branch=master&svg=true)](https://ci.appveyor.com/project/colearendt/gitlink)
[![Coverage status](https://codecov.io/gh/colearendt/gitlink/branch/master/graph/badge.svg)](https://codecov.io/github/colearendt/gitlink?branch=master)

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

# Code of Conduct

Please note that the 'gitlink' project is released with a [Contributor Code of
Conduct](.github/CODE_OF_CONDUCT.md). By contributing to this project, you agree
to abide by its terms.
