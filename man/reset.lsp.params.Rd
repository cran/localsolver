\name{reset.lsp.params}
\alias{reset.lsp.params}
\title{Reset all ls.problem instance parameters.}
\usage{
reset.lsp.params(lsp)
}
\arguments{
  \item{lsp}{the lsp object whose parameters are to be
  reset.}
}
\value{
lsp object with all parameters reset to their default
values.
}
\description{
Problem parameters can be set with
\code{\link{set.params}}. This method resets all their
values to defaults, which have been described in help for
the \code{\link{set.params}} function.
}
\examples{
modelText <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(modelText)
lsp$params
lsp <- set.params(lsp, lsTimeLimit=60, lsSeed=7)
lsp$params
lsp <- reset.lsp.params(lsp)
lsp$params
}

