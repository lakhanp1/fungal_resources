# org.Anidulans.FGSCA4.eg.db
This is an org.db annotation resource package for fungal species *A. nidulans*. This annotation package include the gene based information from [AspGD](http://www.aspgd.org/) database.

## Install

```r
library(devtools)
devtools::install_github("lakhanp1/fungal_resources/A_nidulans/org.Anidulans.FGSCA4.eg.db")
```

## Usage

To know all the key types for the org.db

```r
library(org.Anidulans.FGSCA4.eg.db)

AnnotationDbi::keytypes(org.Anidulans.FGSCA4.eg.db)
```

<br />

*A. nidulans* gene id from [AspGD](http://www.aspgd.org/) database is used as main key column `GID` in this org.db. To extract all the keys, for example of type `GID`:

```r
AnnotationDbi::keys(x = org.Anidulans.FGSCA4.eg.db, keytype = "GID")

## keys using other column
AnnotationDbi::keys(x = org.Anidulans.FGSCA4.eg.db, keytype = "NCBI_ID")
```

<br />

To extract multiple columns from org.db for gene/s of interest:

```r
## random 1000 genes
gids <- sample(AnnotationDbi::keys(x = org.Anidulans.FGSCA4.eg.db, keytype = "GID"), 1000)

geneInfo <- AnnotationDbi::select(x = org.Anidulans.FGSCA4.eg.db,
                                  keys = gids,
                                  columns = c("GID", "GENE_NAME", "KEGG_ID", "DESCRIPTION"),
                                  keytype = "GID")
```

<br />

#### Applications of org.db package

org.db package has several application while performing genomic data analysis in R. For example:

org.db package can be used to perform GO group assignment analysis using [clusterProfiler](https://bioconductor.org/packages/release/bioc/vignettes/clusterProfiler/inst/doc/clusterProfiler.html) package.

```r
library(clusterProfiler)

grpGo <- clusterProfiler::groupGO(gene = gids,
                                  OrgDb = org.Anidulans.FGSCA4.eg.db,
                                  ont = "BP",
                                  level = 4)

```

Similarly this org.db object can also be used for other functions like `enrichGO` and `gseGO` from [clusterProfiler](https://bioconductor.org/packages/release/bioc/vignettes/clusterProfiler/inst/doc/clusterProfiler.html) package.

<br />

To extract gene to GO assignment table for all genes:

```r
geneToGoTab <- AnnotationDbi::select(x = org.Anidulans.FGSCA4.eg.db,
                                     keys = AnnotationDbi::keys(x = org.Anidulans.FGSCA4.eg.db, keytype = "GID"),
                                     columns = c("GID", "GOALL"),
                                     keytype = "GID")

head(geneToGoTab)
```

Please refer to `AnnotationDbi` package on Bioconductor to learn more on data extraction from org.db.

_______

*This package is developed by Chris Lab members at University of Macau, Macau SAR. This is open access package under GNU GPL v2 license.*
