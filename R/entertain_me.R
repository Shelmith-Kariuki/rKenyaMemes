#' entertain_me
#'
#' Displays memes on the `Viewer` pane
#'
#' @return A meme on the `Viewer` Pane
#' @import magick
#' @import crayon
#' @import emo
#' @export
#' @examples
#' entertain_me()

entertain_me <- function(){

  # Generate a random number that will determine the image to be pulled
  sample_num <- sample(c(1:215), 1)

  ## Source the image
  file_url <- paste0("https://raw.github.com/Shelmith-Kariuki/KenyaMemes/master/", "kenyameme", sample_num, ".jpg")

  ## Read in the image
  meme_moja <- tryCatch(image_read(file_url),
                        error = function(e){
                          message(cat(red(paste0("Oops! Please try again ", ji("sad")))))
                        })

  if(!is.null(meme_moja)){

  ## Reduce the size of the image
  meme_moja <- try(image_scale(meme_moja,"400x400!"))

  ## List of emojis
  emolist <- c(ji("smile"), ji("laugh"), ji("flex"), ji("blush"), ji("tada"), ji("lol"))

  ## Sample one emoji
  emoji <- sample(emolist, 1)

  ## Display a message
  cat(green(paste0("Okay, check the `Viewer` pane ... ", emoji, "\n")))

  ## Print the output
  print(meme_moja, info = FALSE)

  }
}
