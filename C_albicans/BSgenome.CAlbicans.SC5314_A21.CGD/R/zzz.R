###
###

.pkgname <- "BSgenome.CAlbicans.SC5314_A21.CGD"

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
        organism="Candida albicans",
        common_name="Candida albicans",
        provider="CGD",
        provider_version="Candida_albicans_SC5314_A21-s02-m09-r08",
        release_date="2014-06-15",
        release_name="CGD",
        source_url="http://www.candidagenome.org/download/sequence/C_albicans_SC5314/Assembly21/",
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

    old_objname <- "Afumigatus"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

