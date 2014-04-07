\name{print.ls.problem}
\alias{print.ls.problem}
\title{Prints an object of class ls.problem.}
\usage{
\method{print}{ls.problem}(x, ...)
}
\arguments{
  \item{x}{problem instance created with
  \code{\link{ls.problem}}.}

  \item{...}{further arguments passed to or from other
  methods.}
}
\description{
Prints an object of class ls.problem.
}
\examples{
model.text.lsp <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(model.text.lsp)
lsp
}

