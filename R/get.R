#' nes_get
#'
#' @export
#' @description Retrieves external files and store in file cache.
#' @importFrom rappdirs user_data_dir
#' @importFrom utils download.file unzip
#' @importFrom dataone CNode getMNode getPackage
#' @param version_id character version id
#' @param skip numeric vector of lines to skip on file read. optional.
#' @param dest_folder file.path optional will default to the location returned by \code{\link[rappdirs]{user_data_dir}}.
#' @param compile logical perform on-the-fly compilation to rds?
#' @examples \dontrun{
#' nes_get(version_id = "1", compile = FALSE)
#' }
nes_get <- function(version_id, skip = NA, dest_folder = NA, compile = TRUE){

  # dir.exists(cache_path())
  dir.create(cache_path(), showWarnings = FALSE)
  versioned_path <- paste0(cache_path(), version_id)
  dir.create(versioned_path, showWarnings = FALSE)
  target <- file.path(versioned_path, "NES", "nes_data.csv")

  # cn <- dataone::CNode("PROD")
  # mn <- dataone::getMNode(cn, "urn:node:KNB")
  # qy <- dataone::query(cn, list(
  #   rows = "300",
  #   q = "title:*\"National Eutrophication\"*",
  #   fl = "id,title,dateModified"),
  #   as = "data.frame")

  get_if_not_exists(id = "knb.1279.3", target = target,
                    versioned_path = versioned_path)

  if(compile){
    nes_compile(version_id = version_id, skip = skip)
  }
}
