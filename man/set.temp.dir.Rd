\name{set.temp.dir}
\alias{set.temp.dir}
\title{Sets folder to use for the problem instance solving process temporary data.}
\usage{
set.temp.dir(lsp, path)
}
\arguments{
  \item{lsp}{problem instance created with
  \code{\link{ls.problem}}.}

  \item{path}{the directory, which will be used for
  temporary data.}
}
\description{
Exposed for technical reasons. Temporary folder is used to
store files for communication with LocalSolver application.
By default system received temp folder is used. Setting
temporary folder is useful in case \code{\link{ls.solve}}
is performed in parallel. In that case each call should use
own lsp instance with dedicated temporary folder. In case
of changing this directory, it is important to choose a
path to a folder with write access.
}
\examples{
model.text.lsp <- lsp.model.example('extdata/knapsack.txt')
lsp <- ls.problem(model.text.lsp)
lsp <- set.temp.dir(lsp, tempdir())
}

