\name{autoplot.cca}
\alias{autoplot.cca}
\title{ggplot-based plot for objects of class \code{"cca"}}
\usage{
\method{autoplot}{cca}(object, geom = c("point", "text"),
  layers = c("species", "sites", "biplot", "centroids"), ylab, xlab, const,
  ...)
}
\arguments{
  \item{object}{an object of class \code{"cca"}, the result
  of a call to \code{\link[vegan]{cca}}.}

  \item{geom}{character; which geoms to use for the layers.
  Can be a vector of length equal to
  \code{length(display)}, in which case the \emph{i}th
  element of \code{type} refers to the \emph{i}th element
  of \code{display}.}

  \item{layers}{character; which scores to plot as layers}

  \item{xlab}{character; label for the x-axis}

  \item{ylab}{character; label for the y-axis}

  \item{const}{General scaling constant to \code{rda}
  scores. See \code{\link[vegan]{plot.cca}} for details.}

  \item{...}{Additional arguments passed to
  \code{\link{fortify.cca}}.}
}
\value{
Returns a ggplot object.
}
\description{
Produces a multi-layer ggplot object representing the
output of objects produced by \code{\link[vegan]{cca}},
\code{\link[vegan]{rda}}, or \code{\link[vegan]{capscale}}.
}
\details{
TODO
}
\examples{
data(dune)
data(dune.env)

sol <- cca(dune ~ A1 + Management, data = dune.env)
autoplot(sol)
}
\author{
Gavin L. Simpson
}

