% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hvar.R
\name{hvar}
\alias{hvar}
\title{Height Variation in cells at different scales}
\usage{
hvar(
  dem,
  x,
  y,
  L0,
  L,
  n = 5,
  parallel = FALSE,
  ncores = (parallel::detectCores() - 1)
)
}
\arguments{
\item{dem}{Digital elevation model in raster format.}

\item{x}{Bottom-left of bounding box.}

\item{y}{Bottom-left of bounding box.}

\item{L0}{Resolution}

\item{L}{Bounding box extent (i.e., side length).}
}
\value{
A \code{data.frame} containing height ranges of cells at different scales.
}
\description{
Height Variation in cells at different scales
}
\details{
This function is used for calculating fractal dimension using the
height variation method.
It is separated from the \code{fd} function because it takes a while to run, and so it is useful
to save the output before using the \code{fd} function.
}
\examples{

hvar(horseshoe, x=-470, y=1266, L=2, L0 = 0.5)
}
