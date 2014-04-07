\name{add.output.expr}
\alias{add.output.expr}
\title{Add expression to output of ls.problem.}
\usage{
add.output.expr(lsp, expr.text.lsp, dimensions = 1)
}
\arguments{
  \item{lsp}{problem instance created with
  \code{\link{ls.problem}}.}

  \item{expr.text.lsp}{text of expression in LSP language
  (an objective function, constraint or decision variable
  name).}

  \item{dimensions}{vector of variables expected
  dimensions. 1 for a number, length of a vector or
  dimensions of resulting matrix or array (see
  \code{\link{array}} \code{dim} parameter). The vector of
  the dimensions must be of length 1, 2 or 3, as the
  library does not maintain arrays of more than 3
  dimensions.}
}
\value{
Updated \code{ls.problem} instance.
}
\description{
Added expression will be printed out by the LocalSolver and
added to \code{\link{ls.solve}} result.
}
\details{
Each added expression is extracted out of LocalSolver
output according to \code{dimensions} provided. Extracted
values are converted into R data structures. If
\code{dimension} is 1 the expression is considered to be a
number. Otherwise the expression is converted to R
\code{array} with \code{dimensions} passed as dim(see
\code{\link{array}}).

All output expression values are exposed as
\code{\link{numeric}s}.

\strong{Currently errors in expression and inconsistency in
dimensions passed are not detected properly. Handling such
situations is planned to be implemented in next localsolver
package version.}
}
\examples{
model.text.lsp <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(model.text.lsp)
lsp <- add.output.expr(lsp, "knapsackWeight")
# produces table x[i in 1..5][j in 1..10] in LocalSolver output
# and array with dims = c(5,10) under name x in output of ls.solve.
lsp <- add.output.expr(lsp, "x", c(5, 10))
}

