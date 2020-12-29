\name{BSgenome.Afumigatus.A1163.AspGD}
\docType{package}

\alias{BSgenome.Afumigatus.A1163.AspGD-package}
\alias{BSgenome.Afumigatus.A1163.AspGD}
\alias{Afumigatus}

\title{Full genome sequences for A. fumigatus A1163}

\description{
  Full genome sequences for A. fumigatus A1163 from AspGD and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
A_fumigatus_A1163_chromosomes.fasta from http://www.aspergillusgenome.org/download/sequence/A_fumigatus_A1163/current/
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Afumigatus.A1163.AspGD
genome <- BSgenome.Afumigatus.A1163.AspGD
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
