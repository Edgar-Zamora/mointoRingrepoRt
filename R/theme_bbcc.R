<<<<<<< HEAD
#' BBCC Theme
#' @description A theme that will customize graphics according standards.
#'
#' @export
#' @example
#'
#' df %>%
#'   theme_bbcc() %>%
#'   theme_(
#'   axis.tick = element_blank(),
#'   plot.title = element_text(size = 16)
#'   )
#'


=======
#' Generate custom theme settings for the Mission Fulfillment Report
#'
#' @return Thematic settings for ggplot object
#' @export
#'
#' @examples
#'
#' mtcars %>%
#'    ggplot(aes(mpg, cyl)) +
#'    geom_point() +
#'    labs(
#'         title = "Some title") +
#'    theme_bbcc() +
#'    theme(
#'         plot.title = element_text(size = 16)
#'         )
#'
#'
>>>>>>> cb257be9815d6fa6e7b9143b18f109f518e15485
theme_bbcc <- function(){

  font <- "Calibri Light"

<<<<<<< HEAD

  theme_minimal( ) %+replace%
=======
  theme_minimal() %+replace%
>>>>>>> cb257be9815d6fa6e7b9143b18f109f518e15485

    theme(

      #grid elements
      panel.grid = element_blank(),
      panel.background = element_blank(),
      axis.ticks = element_blank(),

<<<<<<< HEAD

      #strip elements
      strip.background = element_blank(),


=======
      #strip elements
      strip.background = element_blank(),

>>>>>>> cb257be9815d6fa6e7b9143b18f109f518e15485
      #text elements
      text = element_text(family = font),
      axis.text = element_text(color = "black"),

<<<<<<< HEAD

=======
>>>>>>> cb257be9815d6fa6e7b9143b18f109f518e15485
      #legend
      legend.position = "bottom",
      legend.key = element_blank()

    )
}
<<<<<<< HEAD

=======
>>>>>>> cb257be9815d6fa6e7b9143b18f109f518e15485
