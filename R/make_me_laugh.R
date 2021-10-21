#' make_me_laugh
#'
#' @return A meme on the Viewer Pane
#' @import magick
#' @export
#'
#' @examples
#' make_me_laugh()
make_me_laugh <- function(){

  ## Load the images
  pichas <- list.files("inst/extdata/")

  ## Sample one image
  picha <- sample(pichas, 1)

  ## Read in the image
  meme_moja <- invisible(image_read(paste0("inst/extdata/", picha)))

  return(meme_moja)

}
