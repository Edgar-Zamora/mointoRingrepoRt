#' Modality Enrollment
#'
#' @description Get a dataframe of fte for each modality since the start of record.
#'
#' @return
#' @export
#'
#' @examples
#'
#'  modality_fte() %>%
#'    filter(year_long == "2018-19")
#'
#'

modality_fte <- function(last_yr) {

  tbl(con, "CLASS") %>%
    collect() %>%
    clean_names() %>%
    filter(year >= "B34",
           year <= {{last_yr}}) %>%
    select(year, ftes_total, dist_ed) %>%
    #count(dist_ed)
    mutate(modality = case_when(is.na(dist_ed) | dist_ed %in% c("40", "7A") ~ "Face-to-Face",
                                dist_ed == "9E" ~ "Web Enhanced",
                                dist_ed == "8H" ~ "Hybrid",
                                TRUE ~ "On-line")) %>%
    group_by(year, modality) %>%
    summarise(
      ftes = round(sum(ftes_total)/3, 1)
    ) %>%
    ungroup() %>%
    left_join(tbl(con, "YRQ LU") %>%
                collect() %>%
                clean_names() %>%
                select(yr, year_long), by = c("year" = "yr")) %>%
    distinct_all()
}

