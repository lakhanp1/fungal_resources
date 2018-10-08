datacache <- new.env(hash=TRUE, parent=emptyenv())

org.Calbicans.eg <- function() showQCData("org.Calbicans.eg", datacache)
org.Calbicans.eg_dbconn <- function() dbconn(datacache)
org.Calbicans.eg_dbfile <- function() dbfile(datacache)
org.Calbicans.eg_dbschema <- function(file="", show.indices=FALSE) dbschema(datacache, file=file, show.indices=show.indices)
org.Calbicans.eg_dbInfo <- function() dbInfo(datacache)

org.Calbicans.egORGANISM <- "Candida albicans"

.onLoad <- function(libname, pkgname)
{
    ## Connect to the SQLite DB
    dbfile <- system.file("extdata", "org.Calbicans.eg.sqlite", package=pkgname, lib.loc=libname)
    assign("dbfile", dbfile, envir=datacache)
    dbconn <- dbFileConnect(dbfile)
    assign("dbconn", dbconn, envir=datacache)

    ## Create the OrgDb object
    sPkgname <- sub(".db$","",pkgname)
    db <- loadDb(system.file("extdata", paste(sPkgname,
      ".sqlite",sep=""), package=pkgname, lib.loc=libname),
                   packageName=pkgname)    
    dbNewname <- AnnotationDbi:::dbObjectName(pkgname,"OrgDb")
    ns <- asNamespace(pkgname)
    assign(dbNewname, db, envir=ns)
    namespaceExport(ns, dbNewname)
        
    packageStartupMessage(AnnotationDbi:::annoStartupMessages("org.Calbicans.eg.db"))
}

.onUnload <- function(libpath)
{
    dbFileDisconnect(org.Calbicans.eg_dbconn())
}

