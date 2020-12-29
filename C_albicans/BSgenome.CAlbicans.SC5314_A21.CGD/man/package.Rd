\name{BSgenome.CAlbicans.SC5314_A21.CGD}
\docType{package}

\alias{BSgenome.CAlbicans.SC5314_A21.CGD-package}
\alias{BSgenome.CAlbicans.SC5314_A21.CGD}
\alias{Afumigatus}

\title{Full genome sequences for C. albicans SC5314_A21}

\description{
  Full genome sequences for C. albicans SC5314_A21 from CGD and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
C_albicans_SC5314_A21_current_chromosomes.fasta http://www.candidagenome.org/download/sequence/C_albicans_SC5314/Assembly21/
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
BSgenome.CAlbicans.SC5314_A21.CGD
genome <- BSgenome.CAlbicans.SC5314_A21.CGD
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
