\name{TxDb.Afumigatus.Af293.AspGD.GFF}
\docType{package}

\alias{TxDb.Afumigatus.Af293.AspGD.GFF-package}
\alias{TxDb.Afumigatus.Af293.AspGD.GFF}
\alias{TxDb.Afumigatus.Af293.AspGD.GFF}


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
  This data package was made from resources at Af293 AspGD GFF on
  2019-02-09 21:05:29 +0800 (Sat, 09 Feb 2019) and based on the Af293 AspGD GFF
}

\author{Lakhansing Pardeshi Chris Lab, Lakhansing Pardeshi <lakhanp@umac.mo> [cre]}


\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## load the library
library(TxDb.Afumigatus.Af293.AspGD.GFF)
## list the contents that are loaded into memory
ls('package:TxDb.Afumigatus.Af293.AspGD.GFF')
## show the db object that is loaded by calling it's name
TxDb.Afumigatus.Af293.AspGD.GFF

}

\keyword{package}
\keyword{data}
