bbcc_palette <- c(
  `green` = "#30763a",
  `dark blue` = "#132048"
)

#' Use official BBCC colors
#'
#' @param ...
#'
#' @return A vector of colors used for BBCC branding. Also can assign color within
#'         ggplot
#' @export
#'
#' @examples
#'
#' mtcars %>%
#'       ggplot(aes(mpg, cyl)) +
#'       geom_point(color = bbcc_cols("dark blue")) +
#'       labs(
#'            title = "Some title") +
#'       theme(
#'            plot.title = element_text(size = 20, color = bbcc_cols("green"))
#'            )
#'

bbcc_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return(bbcc_palette)

  bbcc_palette[cols]

}

