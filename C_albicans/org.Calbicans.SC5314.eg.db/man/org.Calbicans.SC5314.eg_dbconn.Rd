
\name{org.Calbicans.SC5314.eg_dbconn}

\alias{org.Calbicans.SC5314.eg_dbconn}
\alias{org.Calbicans.SC5314.eg_dbfile}
\alias{org.Calbicans.SC5314.eg_dbschema}
\alias{org.Calbicans.SC5314.eg_dbInfo}


\title{Collect information about the package annotation DB}

\description{
  Some convenience functions for getting a connection object to (or collecting
  information about) the package annotation DB.
}

\usage{
  org.Calbicans.SC5314.eg_dbconn()
  org.Calbicans.SC5314.eg_dbfile()
  org.Calbicans.SC5314.eg_dbschema(file="", show.indices=FALSE)
  org.Calbicans.SC5314.eg_dbInfo()
}

\arguments{
  \item{file}{
    A connection, or a character string naming the file to print to (see
    the \code{file} argument of the \code{\link[base]{cat}} function for
    the details).
  }
  \item{show.indices}{
    The CREATE INDEX statements are not shown by default.
    Use \code{show.indices=TRUE} to get them.
  }
}

\details{
  \code{org.Calbicans.SC5314.eg_dbconn} returns a connection object to the
  package annotation DB.  IMPORTANT: Don't call
  \code{\link[DBI:dbConnect]{dbDisconnect}} on the connection object
  returned by \code{org.Calbicans.SC5314.eg_dbconn} or you will break all the
  \code{\link[AnnotationDbi:AnnDbObj-class]{AnnDbObj}} objects defined
  in this package!

  \code{org.Calbicans.SC5314.eg_dbfile} returns the path (character string) to the
  package annotation DB (this is an SQLite file).

  \code{org.Calbicans.SC5314.eg_dbschema} prints the schema definition of the
  package annotation DB.

  \code{org.Calbicans.SC5314.eg_dbInfo} prints other information about the package
  annotation DB.
}

\value{
  \code{org.Calbicans.SC5314.eg_dbconn}: a DBIConnection object representing an
  open connection to the package annotation DB.

  \code{org.Calbicans.SC5314.eg_dbfile}: a character string with the path to the
  package annotation DB.

  \code{org.Calbicans.SC5314.eg_dbschema}: none (invisible \code{NULL}).

  \code{org.Calbicans.SC5314.eg_dbInfo}: none (invisible \code{NULL}).
}

\seealso{
  \code{\link[DBI:dbSendQuery]{dbGetQuery}},
  \code{\link[DBI:dbConnect]{dbConnect}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbconn}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbfile}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbschema}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbInfo}}
}

\examples{
  library(DBI)
  ## Count the number of rows in the "genes" table:
  dbGetQuery(org.Calbicans.SC5314.eg_dbconn(), "SELECT COUNT(*) FROM genes")

  org.Calbicans.SC5314.eg_dbschema()

  org.Calbicans.SC5314.eg_dbInfo()
}

\keyword{utilities}
\keyword{datasets}

