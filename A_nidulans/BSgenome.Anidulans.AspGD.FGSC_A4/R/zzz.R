###
###

.pkgname <- "BSgenome.Anidulans.AspGD.FGSC_A4"

.seqnames <- NULL

.circ_seqs <- NULL

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Aspergillus nidulans",
        common_name="Aspergillus nidulans",
        provider="AspGD",
        provider_version="s10-m04-r03",
        release_date="04-Oct-2015",
        release_name="AspGD",
        source_url="http://www.aspergillusgenome.org/download/sequence/A_nidulans_FGSC_A4/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Anidulans"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

