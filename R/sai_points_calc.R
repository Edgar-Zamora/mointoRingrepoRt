#' This function will produce a
#'
#' @param sai_area This is the SAI point that is going to be calcuated whic may include 1st 15 credits, completion, retention or some
#' point. The ABE point is not calculated in this manner
#' @param sai_title String that will be used for the title of the table that is generated used the `sai_tbl` function.
#'
#' @return A tibble containing a ggplot object, kable table, and relevant data that can be plucked and used in the report.
#' @export
#'
#' @examples
#'
#'
#'
#'

sai_calculation <- function(sai_area, sai_title) {

  overall <- sai_demographics %>%
    inner_join(sai_points, by = c("cohort_year" = "cohortyear", "sid")) %>%
    select(cohort_year, {{sai_area}}) %>%
    filter({{sai_area}} != "0") %>%
    count(cohort_year) %>%
    left_join(sai_totals, by = c("cohort_year")) %>%
    left_join(year_lu, by = c("cohort_year" = "yr")) %>%
    select(-c(race_ethnic_groupings, total_in_race, cohort_year)) %>%
    mutate(percentage = n/year_total,
           sai_area = glue('{sai_title}'),
           group = "overall") %>%
    rename("total" = year_total) %>%
    distinct_all()


  race_groups <- sai_demographics %>%
    inner_join(sai_points, by = c("cohort_year" = "cohortyear", "sid")) %>%
    select(cohort_year, {{sai_area}}, race_ethnic_groupings) %>%
    filter({{sai_area}} != "0") %>%
    count(cohort_year, race_ethnic_groupings) %>%
    left_join(sai_totals, by = c("cohort_year", "race_ethnic_groupings")) %>%
    left_join(year_lu, by = c("cohort_year" = "yr")) %>%
    select(-cohort_year, -year_total) %>%
    mutate(percentage = n/total_in_race,
           sai_area = glue('{sai_title}')) %>%
    rename("group" = race_ethnic_groupings,
           "total" = total_in_race)


  output <- rbind(overall, race_groups) %>%
    nest(data = c(n:percentage, group)) %>%
    mutate(graph_data = map(data, ~filter(., group != "Unknown")),
           plot = map(graph_data, ~sai_plot(.)),
           print_tbl = map(data, ~sai_tbl(.)))
}

