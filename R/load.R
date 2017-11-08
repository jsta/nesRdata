#' nes_load
#' @description Load files from local file system
#' @param version_id character database version string
#' @param folder file.path to data folder; use cache_path() to load cached (non-temporary) data
#' @param format character choice of rds or sqlite
#' @param fpath file.path optionally specify custom location of rds file
#' @export
#' @importFrom rappdirs user_data_dir
#' @importFrom dplyr src_sqlite
#' @examples \dontrun{
#'
#' # load from tempdir
#' nes_get("1")
#' dt  <- nes_load("1")
#'
#' # load from cached
#' nes_get("1", dest_folder = cache_path())
#' dt <- nes_load("1", folder = cache_path())
#' }
nes_load <- function(version_id, folder = tempdir(), format = "rds", fpath = NA){

  if(!is.na(fpath)){

    if(format == "sqlite"){
      dplyr::src_sqlite(fpath)
    }else{
      readRDS(fpath)
    }

  }else{

    if(format == "sqlite"){
      sqlite_path <- file.path(folder, "sqlite3")
      stop_if_not_exists(sqlite_path)
      dplyr::src_sqlite(sqlite_path)
    }else{
      rds_path <- file.path(folder, paste0("NES_", version_id, ".rds"))
      stop_if_not_exists(rds_path)
      readRDS(rds_path)
    }

  }
}
