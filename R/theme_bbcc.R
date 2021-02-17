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
<<<<<<< HEAD
#'
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
=======
>>>>>>> 53f0d1347ec3751a96cc4109a042091d2c2fcc8c

theme_bbcc <- function(){

  font <- "Calibri Light"

  theme_minimal( ) %+replace%
<<<<<<< HEAD
  theme_minimal() %+replace%
=======

  theme_minimal() %+replace%

>>>>>>> 53f0d1347ec3751a96cc4109a042091d2c2fcc8c

    theme(

      #grid elements
      panel.grid = element_blank(),
      panel.background = element_blank(),
      axis.ticks = element_blank(),

      #strip elements
      strip.background = element_blank(),

      #strip elements
      strip.background = element_blank(),
<<<<<<< HEAD
=======

>>>>>>> 53f0d1347ec3751a96cc4109a042091d2c2fcc8c
      #text elements
      text = element_text(family = font),
      axis.text = element_text(color = "black"),

      #legend
      legend.position = "bottom",
      legend.key = element_blank()

    )
}
