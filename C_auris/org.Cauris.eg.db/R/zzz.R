datacache <- new.env(hash=TRUE, parent=emptyenv())

org.Cauris.eg <- function() showQCData("org.Cauris.eg", datacache)
org.Cauris.eg_dbconn <- function() dbconn(datacache)
org.Cauris.eg_dbfile <- function() dbfile(datacache)
org.Cauris.eg_dbschema <- function(file="", show.indices=FALSE) dbschema(datacache, file=file, show.indices=show.indices)
org.Cauris.eg_dbInfo <- function() dbInfo(datacache)

org.Cauris.egORGANISM <- "Candida auris"

.onLoad <- function(libname, pkgname)
{
    ## Connect to the SQLite DB
    dbfile <- system.file("extdata", "org.Cauris.eg.sqlite", package=pkgname, lib.loc=libname)
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
        
    packageStartupMessage(AnnotationDbi:::annoStartupMessages("org.Cauris.eg.db"))
}

.onUnload <- function(libpath)
{
    dbFileDisconnect(org.Cauris.eg_dbconn())
}

