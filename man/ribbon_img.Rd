% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ribbon.R
\name{ribbon_img}
\alias{ribbon_img}
\alias{get_color_lookup}
\title{Build a GitHub Ribbon from an Image}
\usage{
ribbon_img(link, position = "right", color = "white")

get_color_lookup()
}
\arguments{
\item{link}{The URL that the ribbon will link to}

\item{position}{The position to place the ribbon in (either "left" or "right")}

\item{color}{The color for the ribbon. One of get_color_lookup()}
}
\value{
HTML that can be injected into any HTML output
}
\description{
Publicly available ribbon images began the "GitHub ribbon craze." This is a
helper function that client-side retrieves these images. As a result, only
certain colors are available. \link{ribbon_css} is usually
preferred for many reasons.
}
\details{
NOTE that this creates a dependency on these image files, which
are hosted publicly by GitHub on AWS.
}
\seealso{
\code{\link{ribbon_css}}
}
