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
theme_bbcc <- function(){

  font <- "Calibri Light"

  theme_minimal() %+replace%

    theme(

      #grid elements
      panel.grid = element_blank(),
      panel.background = element_blank(),
      axis.ticks = element_blank(),

      #strip elements
      strip.background = element_blank(),

      #text elements
      text = element_text(family = font),
      axis.text = element_text(color = "black"),

      #legend
      legend.position = "bottom",
      legend.key = element_blank()

    )
}
