\name{ls.problem}
\alias{ls.problem}
\title{Create problem instance from model formulated in LSP language.}
\usage{
ls.problem(model.text.lsp, ls.path = NULL)
}
\arguments{
  \item{model.text.lsp}{text of model formulated in LSP
  language.}

  \item{ls.path}{path to the LocalSolver executable.
  Optional argument (NULL by default). If not provided, the
  LocalSolver will be searched by the system in \env{PATH}
  environment variable.}
}
\value{
created ls.problem instance.
}
\description{
Creates problem instance from model LSP code passed.
Detects functions in model LSP code.
}
\details{
Functions detected in model LSP code must contain
\code{model} function as it main 'workhorse' function of
LocalSolver model. They can contain \code{param},
\code{display} and any other custom functions.

Because localsolver package defines \code{input} function
based on data passed to \code{\link{ls.solve}} and
\code{output} function base on output expressions added to
problem instance with \code{\link{add.output.expr}} these
two(\code{input} and \code{output}) functions cannot occur
in model LSP code passed. Passing them will cause
appropriate error.

For mode details see LocalSolver LSP language reference
manual:
\url{http://www.localsolver.com/lspreferencemanual.html}.
}
\examples{
model.text.lsp <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(model.text.lsp)
}

