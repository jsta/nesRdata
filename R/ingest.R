#' nes_ls
#'
#' @param version_id character version id
#' @param ... extra arguments passed to list.files
#'
#' @export
#'
#' @examples
#' nes_ls("1")
nes_ls <- function(version_id, ...){
  list.files(file.path(cache_path(), version_id, "NES"),
             pattern = "\\.csv$", ...)
}

#'@name nes_ingest
#'@title Ingest flat files
#'@description Ingest data from component flat files
#'@param version_id character nes version string
#'@param folder file.path to data folder. optional.
#'@param skip numeric vector of lines to skip on file read. optional.
#'@importFrom readr read_csv
#'@importFrom purrr map_df
#'@examples \dontrun{
#'nes_ingest("1")
#'}
#'
nes_ingest <- function(version_id, folder = NA, skip = NA){

  # Set-up paths ####
  flist <- nes_ls(version_id = version_id,
                  full.names = TRUE, include.dirs = TRUE)

  # Read data ####

  if(all(is.na(skip))){
    skip <- rep(0, length(flist))
  }

  res <- lapply(seq_along(flist),
            function(i) purrr::map_df(flist[i],
                                   readr::read_csv,
                                   skip = skip[i]))
  names(res) <- gsub("*.csv", "", basename(flist))

  res
}
