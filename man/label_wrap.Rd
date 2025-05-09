% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/label-wrap.R
\name{label_wrap}
\alias{label_wrap}
\title{Label strings by wrapping across multiple lines}
\usage{
label_wrap(width)
}
\arguments{
\item{width}{Number of characters per line.}
}
\value{
All \code{label_()} functions return a "labelling" function, i.e. a function that
takes a vector \code{x} and returns a character vector of \code{length(x)} giving a
label for each input value.

Labelling functions are designed to be used with the \code{labels} argument of
ggplot2 scales. The examples demonstrate their use with x scales, but
they work similarly for all scales, including those that generate legends
rather than axes.
}
\description{
Uses \code{\link[=strwrap]{strwrap()}} to split long labels across multiple lines.
}
\examples{
x <- c(
  "this is a long label",
  "this is another long label",
  "this a label this is even longer"
)
demo_discrete(x)
demo_discrete(x, labels = label_wrap(10))
demo_discrete(x, labels = label_wrap(20))
}
\seealso{
Other labels for discrete scales: 
\code{\link{label_dictionary}()},
\code{\link{label_glue}()},
\code{\link{label_parse}()}
}
\concept{labels for discrete scales}
