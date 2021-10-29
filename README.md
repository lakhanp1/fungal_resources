# Fungal annotation resources to work with fungal genomics data in R
This repository has various annotation resources for different fungal genomes I have worked on. One can easily create these resources on their own using R packages like ``AnnotationForge``, ``GenomicFeatures`` etc.

**OrgDb packages:** To prepare OrgDb package for an organism, gene information, GO assignment, KEGG pathway data was extracted from various public domain databases like AspGD, CGD, FunigDB, NCBI etc. This curated data was used with R function ``AnnotationForge::makeOrgPackage()`` to create OrgDb package. One can store different form of information for each gene in OrgDb package and once created, can easily extract the information using ``AnnotationDbi::select()`` function. This orgDb package can be used in GO enrichment analysis using [``clusterProfiler``](https://bioconductor.org/packages/release/bioc/html/clusterProfiler.html) package. 


**TxDb packages:** Most updated GFF or GTF file was obtained for organism of interest from public domain databases. All the TxDb packages were created using ``GenomicFeatures::makeTxDbFromGFF()`` function in R. Various Bioconductor R packages require a TxDb object of an organism for data analysis. See [here](https://bioconductor.org/packages/release/bioc/html/GenomicFeatures.html) for the details.

**BSgenome packages:** This package holds the FASTA sequence data in form of a R package object. BSgenome object allows easy manipulation of sequence data using R. One can imagine its function similar to ``samtools`` package. `BioConductor version 3.12` onwards do not create BSgenome package from .2bit files if the genome is not NCBI or UCSC genome assembly.

**topGO mapping files:** OrgDb pacakge created for each organism in previous step was used to extract gene to GO assignment table. This table was saved in tabular file which is used by GO enrichment package [``topGO``](https://bioconductor.org/packages/release/bioc/html/topGO.html).

## *Aspergillus fumigatus Af293*
- OrgDb package: [``org.AFumigatus.Af293.eg.db``](A_fumigatus_Af293/org.AFumigatus.Af293.eg.db)
- TxDb package: [``TxDb.Afumigatus.Af293.AspGD.GFF``](A_fumigatus_Af293/TxDb.Afumigatus.Af293.AspGD.GFF)
- BSgenome package: [``BSgenome.Afumigatus.Af293.AspGD``](A_fumigatus_Af293/BSgenome.Afumigatus.Af293.AspGD)
- Gene to GO mapping file for ``topGO`` package: [topGO_mapping](A_fumigatus_Af293/topGO_mapping)

## *Aspergillus fumigatus A1163*
- OrgDb package: [``org.AFumigatus.A1163.eg.db``](A_fumigatus_A1163/org.AFumigatus.A1163.eg.db)
- TxDb package: [``TxDb.Afumigatus.A1163.AspGD.GFF``](A_fumigatus_A1163/TxDb.Afumigatus.A1163.AspGD.GFF)
- BSgenome package: [``BSgenome.Afumigatus.A1163.AspGD``](A_fumigatus_A1163/BSgenome.Afumigatus.A1163.AspGD)
- Gene to GO mapping file for ``topGO`` package: [topGO_mapping](A_fumigatus_A1163/topGO_mapping)

## *Aspergillus nidulans FGSCA4*
- OrgDb package: [``org.Anidulans.FGSCA4.eg.db``](A_nidulans/org.Anidulans.FGSCA4.eg.db)
- TxDb package: [``TxDb.Anidulans.FGSCA4.AspGD.GFF``](A_nidulans/TxDb.Anidulans.FGSCA4.AspGD.GFF)
- BSgenome package: [``BSgenome.Anidulans.FGSCA4.AspGD``](A_nidulans/BSgenome.Anidulans.FGSCA4.AspGD)
- Gene to GO mapping file for ``topGO`` package: [topGO_mapping](A_nidulans/topGO_mapping)

## *Candida albicans SC5314 A21*
- OrgDb package: [``org.Calbicans.SC5314.eg.db``](C_albicans/org.Calbicans.SC5314.eg.db)
- TxDb package: [``TxDb.Calbicans.SC5314.CGD.GFF``](C_albicans/TxDb.Calbicans.SC5314.CGD.GFF)
- BSgenome package: [``BSgenome.CAlbicans.SC5314.A21.CGD``](C_albicans/BSgenome.CAlbicans.SC5314.A21.CGD)
- Gene to GO mapping file for ``topGO`` package: [topGO_mapping](C_albicans/topGO_mapping)

## *Candida auris*
- OrgDb package: [``org.Cauris.eg.db``](C_auris/org.Cauris.eg.db)
- TxDb package: [](C_auris/)
- BSgenome package: [](C_auris/)
- Gene to GO mapping file for ``topGO`` package: [topGO_mapping](C_auris/topGO_mapping)


<br><br><br>
*License: GPL v2*

