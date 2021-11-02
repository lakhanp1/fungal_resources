datacache <- new.env(hash=TRUE, parent=emptyenv())

org.Cauris.B8441.eg <- function() showQCData("org.Cauris.B8441.eg", datacache)
org.Cauris.B8441.eg_dbconn <- function() dbconn(datacache)
org.Cauris.B8441.eg_dbfile <- function() dbfile(datacache)
org.Cauris.B8441.eg_dbschema <- function(file="", show.indices=FALSE) dbschema(datacache, file=file, show.indices=show.indices)
org.Cauris.B8441.eg_dbInfo <- function() dbInfo(datacache)

org.Cauris.B8441.egORGANISM <- "Candida auris.B8441"

.onLoad <- function(libname, pkgname)
{
    ## Connect to the SQLite DB
    dbfile <- system.file("extdata", "org.Cauris.B8441.eg.sqlite", package=pkgname, lib.loc=libname)
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
        
    packageStartupMessage(AnnotationDbi:::annoStartupMessages("org.Cauris.B8441.eg.db"))
}

.onUnload <- function(libpath)
{
    dbFileDisconnect(org.Cauris.B8441.eg_dbconn())
}

