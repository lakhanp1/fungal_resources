\name{TxDb.Anidulans.AspGD.GFF}
\docType{package}

\alias{TxDb.Anidulans.AspGD.GFF-package}
\alias{TxDb.Anidulans.AspGD.GFF}
\alias{TxDb.Anidulans.AspGD.GFF}


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
  This data package was made from resources at A_nidulans AspGD GFF on
  2019-04-11 03:16:24 +0800 (Thu, 11 Apr 2019) and based on the A_nidulans AspGD GFF
}

\author{Lakhansing Pardeshi Chris Lab, Lakhansing Pardeshi <lakhanp@umac.mo> [cre]}


\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## load the library
library(TxDb.Anidulans.AspGD.GFF)
## list the contents that are loaded into memory
ls('package:TxDb.Anidulans.AspGD.GFF')
## show the db object that is loaded by calling it's name
TxDb.Anidulans.AspGD.GFF

}

\keyword{package}
\keyword{data}
