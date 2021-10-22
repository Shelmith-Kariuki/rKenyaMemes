#' entertain_me
#'
#' Displays memes on the `Viewer` pane
#'
#' @return A meme on the `Viewer` Pane
#' @import magick
#' @import crayon
#' @import emo
#' @export
#'
entertain_me <- function(){

  ## Load the images
  # pichas <- list.files("man/images/")
  pichas <- list.files('inst/extdata/')

  ## Sample one image
  picha <- base::sample(pichas, 1)

  ## Read in the image
  meme_moja <- image_read(paste0("inst/extdata/", picha))

  ## List of emojis
  emolist <- c(ji("smile"), ji("laugh"), ji("flex"), ji("blush"), ji("tada"), ji("lol"))

  # emoji <- emolist[sample(1:length(emolist), 1)]

  ## Display a message
  cat(green(paste0("Okay, check the `Viewer` pane... ", ji("smile"), "\n")))
  return(image_scale(meme_moja,"400x400!"))

}
