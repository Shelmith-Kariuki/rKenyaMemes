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
  pichas <- list.files('inst/extdata/')

  ## Sample one image
  picha <- base::sample(pichas, 1)

  ## Read in the image
  meme_moja <- image_read(paste0("inst/extdata/", picha))

  ## List of emojis
  emolist <- c(ji("smile"), ji("laugh"), ji("flex"), ji("blush"), ji("tada"), ji("lol"))

  ## Sample one emoji
  emoji <- sample(emolist, 1)

  ## Display a message
  cat(green(paste0("Okay, check the `Viewer` pane... ", emoji, "\n")))

  ## Reduce the size of the image
  meme_moja <- image_scale(meme_moja,"400x400!")

  ## Print the output
  print(meme_moja, info = FALSE)
}
