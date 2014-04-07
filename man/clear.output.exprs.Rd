\name{clear.output.exprs}
\alias{clear.output.exprs}
\title{Remove all output expressions (see: \code{\link{add.output.expr}}).}
\usage{
clear.output.exprs(lsp)
}
\arguments{
  \item{lsp}{problem instance created with
  \code{\link{ls.problem}}.}
}
\value{
updated ls.problem instance.
}
\description{
Remove all output expressions (see:
\code{\link{add.output.expr}}).
}
\examples{
model.text.lsp <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(model.text.lsp)
lsp <- add.output.expr(lsp, "knapsackWeight")
lsp <- clear.output.exprs(lsp)
}

