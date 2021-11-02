\name{BSgenome.Cauris.B8441}
\docType{package}

\alias{BSgenome.Cauris.B8441-package}
\alias{BSgenome.Cauris.B8441}
\alias{Cauris}

\title{Full genome sequences for C. auris}

\description{
  Full genome sequences for C. auris and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
Cand_auris_B8441.fasta from https://fungidb.org/fungidb/app/downloads/release-54/CaurisB8441
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
BSgenome.Cauris.B8441
genome <- BSgenome.Cauris.B8441
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
