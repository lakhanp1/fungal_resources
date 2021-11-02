###
###

.pkgname <- "BSgenome.Cauris.B8441"

.seqnames <- NULL

.circ_seqs <- character(0)

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
        organism="Candida auris",
        common_name="Candida auris",
        genome="Candida_auris_B8441",
        provider="AspGD",
        release_date="2021-09-02",
        source_url="https://fungidb.org/fungidb/app/downloads/release-54/CaurisB8441",
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

    old_objname <- "Cauris"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

