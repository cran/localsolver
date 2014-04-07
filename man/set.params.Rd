\name{set.params}
\alias{set.params}
\title{Set ls.problem instance parameters.}
\usage{
set.params(lsp, lsTimeLimit = lsp$params$lsTimeLimit,
  lsIterationLimit = lsp$params$lsIterationLimit,
  lsTimeBetweenDisplays = lsp$params$lsTimeBetweenDisplays,
  lsSeed = lsp$params$lsSeed, lsNbThreads = lsp$params$lsNbThreads,
  lsAnnealingLevel = lsp$params$lsAnnealingLevel,
  lsVerbosity = lsp$params$lsVerbosity,
  indexFromZero = lsp$params$indexFromZero)
}
\arguments{
  \item{lsp}{problem instance created with
  \code{\link{ls.problem}}.}

  \item{lsTimeLimit}{the number of the seconds which will
  be spent to optimize the objective function (functions),
  or a vector of times (in seconds) assigned to each
  objective function. The length of the vector should
  correspond to the length of the number of objective
  functions.}

  \item{lsIterationLimit}{the number of iterations made to
  optimize the objective function (functions), or a vector
  of iteration numbers assigned to each objective function.
  The length of the vector should correspond to the length
  of the number of objective functions.}

  \item{lsTimeBetweenDisplays}{the time (in seconds)
  between successive displays of the information about the
  search (default: 1)}

  \item{lsSeed}{pseudo-random number generator seed
  (default: 0).}

  \item{lsNbThreads}{the number of threads over which the
  search is paralleled (default: 2).}

  \item{lsAnnealingLevel}{simulated annealing level (no
  annealing: 0, default: 1).}

  \item{lsVerbosity}{verbosity (no display: 0, default:
  1).}

  \item{indexFromZero}{indicates whether the data and
  decision variables (vectors and matrices) are to be
  indexed from 0. If \code{FALSE} (by default), they will
  be indexed from 1.}
}
\value{
updated ls.problem instance.
}
\description{
Updates the chosen parameters of an object of class
\code{ls.problem}.
}
\examples{
model.text.lsp <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(model.text.lsp)
lsp <- set.params(lsp, lsTimeLimit=10, lsIterationLimit= 5)
}

