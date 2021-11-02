\name{TxDb.Cauris.B8441.GFF}
\docType{package}

\alias{TxDb.Cauris.B8441.GFF-package}
\alias{TxDb.Cauris.B8441.GFF}
\alias{TxDb.Cauris.B8441.GFF}


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
  This data package was made from resources at C_auris GFF on
  2021-11-02 19:16:13 +0800 (Tue, 02 Nov 2021) and based on the C_auris GFF
}

\author{Lakhansing Pardeshi Chris Lab, Lakhansing Pardeshi <lakhanp@umac.mo> [cre]}


\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## load the library
library(TxDb.Cauris.B8441.GFF)
## list the contents that are loaded into memory
ls('package:TxDb.Cauris.B8441.GFF')
## show the db object that is loaded by calling it's name
TxDb.Cauris.B8441.GFF

}

\keyword{package}
\keyword{data}
