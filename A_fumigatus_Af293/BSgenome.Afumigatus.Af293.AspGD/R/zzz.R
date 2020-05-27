###
###

.pkgname <- "BSgenome.Afumigatus.Af293.AspGD"

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
        organism="Aspergillus fumigatus",
        common_name="Aspergillus fumigatus",
        provider="AspGD",
        provider_version="Aspergillus_fumigatus_Af293_s03-m05-r06",
        release_date="17-Apr-2016",
        release_name="AspGD",
        source_url="http://www.aspergillusgenome.org/download/sequence/A_fumigatus_Af293/",
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

