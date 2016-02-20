#' @title create_r_profile
#'

create_r_profile <- function(mattlib_loc){
  file_loc <- normalizePath(getwd())
  mattlib_loc <- normalizePath(mattlib_loc)
  file <- sprintf("%s/.Rprofile", file_loc)
  file.create(file)
  writeLines(sprintf(".libPaths('%s/')", file_loc, mattlib_loc))
}