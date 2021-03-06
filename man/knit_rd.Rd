% Please edit documentation in R/utils-rd2html.R
\name{knit_rd}
\alias{knit_rd}
\alias{knit_rd_all}
\title{Knit package documentation}
\usage{
knit_rd(pkg, links = tools::findHTMLlinks(), frame = TRUE)

knit_rd_all()
}
\arguments{
\item{pkg}{package name}

\item{links}{a character vector of links to be passed to
\code{\link[tools]{Rd2HTML}}}

\item{frame}{whether to put a navigation frame on left of the index page}
}
\value{
All HTML pages corresponding to topics in the package are written
  under the current working directory. An \file{index.html} is also written
  as a table of content.
}
\description{
Run examples in a package and insert output into the examples code;
\code{knit_rd_all()} is a wrapper around \code{knit_rd()} to build static
HTML help pages for all packages under the \file{html} directory of them.
}
\note{
Ideally the html pages should be put under the \file{html} directory of
  an installed package which can be found via \code{system.file('html',
  package = 'your_package_name')}, otherwise some links may not work (e.g.
  the link to the DESCRITION file).
}
\examples{
library(knitr)
\dontrun{

knit_rd("maps")
knit_rd("rpart")
setwd(system.file("html", package = "ggplot2"))
knit_rd("ggplot2")  # time-consuming!

knit_rd_all()  # this may take really long time if you have many packages installed
}
}
