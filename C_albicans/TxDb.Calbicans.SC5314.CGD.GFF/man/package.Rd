\name{TxDb.Calbicans.SC5314.CGD.GFF}
\docType{package}

\alias{TxDb.Calbicans.SC5314.CGD.GFF-package}
\alias{TxDb.Calbicans.SC5314.CGD.GFF}
\alias{TxDb.Calbicans.SC5314.CGD.GFF}


\title{Annotation package for TxDb object(s)}

\description{  
  This package loads one or more TxDb objects.  Such TxDb
  objects are an R interface to prefabricated databases contained by
  this package.

  The names of any objects exposed by this package indicate the origin and
  resources exposed.  So for example TxDb.Hsapiens.UCSC.hg19.knownGene
  would be a TxDb object, of Homo sapiens data from UCSC build
  hg19 based on the knownGene Track.
}

\note{
  This data package was made from resources at SC5314 A21 GFF on
  2020-12-30 01:32:27 +0800 (Wed, 30 Dec 2020) and based on the SC5314 A21 GFF
}

\author{Lakhansing Pardeshi Chris Lab, Lakhansing Pardeshi <lakhanp@um.edu.mo> [cre]}


\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## load the library
library(TxDb.Calbicans.SC5314.CGD.GFF)
## list the contents that are loaded into memory
ls('package:TxDb.Calbicans.SC5314.CGD.GFF')
## show the db object that is loaded by calling it's name
TxDb.Calbicans.SC5314.CGD.GFF

}

\keyword{package}
\keyword{data}
