\name{ls.solve}
\alias{ls.solve}
\title{Solves a LocalSolver problem on data passed.}
\usage{
ls.solve(lsp, data)
}
\arguments{
  \item{lsp}{problem instance created with
  \code{\link{ls.problem}}.}

  \item{data}{named list of data items. Each element of the
  list should be indexed with the parameter name and should
  be a number, vector, matrix or array (of dimension 2 or
  3) of numbers. The class of the numbers should be either
  integer (they will be then handled as integer by the
  LocalSolver) or numeric (LocalSolver will then treat them
  as elements of class double).}
}
\value{
named list of all output expression values on best solution
found.
}
\description{
Prepares input and data for LocalSolver, runs the
application and parses its output to get resulting values.
}
\details{
Result of this function is named list of output expressions
added to the problem (for description of R data structures
form see \code{\link{add.output.expr}}). Parameters set
with \code{\link{set.params}} are passed to LocalSolver by
means of generation(or modification) of LocalSolver
\code{param} function (see LocalSolver LSP language
reference manual
\url{http://www.localsolver.com/lspreferencemanual.html}
for more details).

\strong{Make sure you pass integers in \code{data} if you
want them to be \code{ints} in LocalSolver. Otherwise they
will be considered \code{doubles}.}

Errors occurred in model LSP code (passed while creating
problem with \code{\link{ls.problem}}) are handled: They
cause error containing original error message and error
occurrence context to make it easier to detect potential
errors in model LSP code. All other LocalSolver errors
(e.g. in output expressions) and interaction errors
(between localsolver package and LocalSolver process) are
passed to caller without processing.
}
\examples{
model.text.lsp <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(model.text.lsp)
lsp <- set.params(lsp, lsTimeLimit=60)
lsp <- add.output.expr(lsp, "x", 4)
data <- list(nbItems=4L, itemWeights=c(1L,2L,3L,4L), itemValues=c(5,6,7,8), knapsackBound=40L)
result <- ls.solve(lsp, data)
}

