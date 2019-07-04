\name{BSgenome.Anidulans.AspGD.FGSC_A4}
\docType{package}

\alias{BSgenome.Anidulans.AspGD.FGSC_A4-package}
\alias{BSgenome.Anidulans.AspGD.FGSC_A4}
\alias{Anidulans}

\title{Full genome sequences for A_nidulans_FGSC_A4_version_s10-m04-r03 from AspGD}

\description{
  Full genome sequences for A_nidulans_FGSC_A4_version_s10-m04-r03 from AspGD and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
A_nidulans_FGSC_A4_version_s10-m04-r03_chromosomes.fasta from http://www.aspergillusgenome.org/download/sequence/A_nidulans_FGSC_A4/
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
BSgenome.Anidulans.AspGD.FGSC_A4
genome <- BSgenome.Anidulans.AspGD.FGSC_A4
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
