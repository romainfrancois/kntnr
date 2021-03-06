% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kntn_file.R
\name{kntn_file}
\alias{kntn_file}
\title{'kintone' File API}
\usage{
kntn_file(fileKey, verbose = FALSE, as = NULL, type = NULL, encoding = NULL)
}
\arguments{
\item{fileKey}{File key.}

\item{verbose}{If \code{TRUE}, output logs verbosely.}

\item{as}{\code{as} parameter passed to \link[httr]{content}.}

\item{type}{\code{type} parameter passed to \link[httr]{content}.}

\item{encoding}{\code{encoding} parameter passed to \link[httr]{content}.}
}
\description{
Get a file from kintone API and parse it with \link[httr]{content}. If you want to parse it by yourself,
specify \code{as = "raw"} or \code{as = "text"}.
}
\examples{
\dontrun{
kntn_set_auth()
app <- 10

# get a single record with a file attachment field
d <- kntn_record(app, id = 1)

f <- kntn_file(fileKey = x$Attachment[[1]]$fileKey[1])
}

}
\seealso{
\url{https://developer.kintone.io/hc/en-us/articles/212494468/}
}
