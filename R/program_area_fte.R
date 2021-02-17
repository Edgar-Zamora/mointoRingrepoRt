#' FTE by Program Area
#'
#' @description Function will return a dataframe containing the FTE for each academic year broken out by program area.
#'
#' @return
#' @export
#'
#' @examples
#'
#' program_area_ftes() %>%
#'   filter(year >= 'B23')
#'

program_area_ftes <- function(last_yr) {

  tbl(con, "CLASS") %>%
    collect() %>%
    clean_names() %>%
    filter(year >= "B23",
           year <= {{last_yr}},
           !dept_div %in% c("BDC", "COM", "CTP", "FIR", "JSP", "JST")) %>%
    select(year, ftes_total, dept_div, course_num) %>%
    mutate(program_area = case_when(dept_div == "ENGL" & course_num == "109" ~ "Workforce Education",
                                    dept_div %in% c("MATH", "ENGL") & course_num < 100 ~ "Pre-college Math and English",
                                    dept_div %in% c("DVS", "HSC", "OPD") ~ "ABE/ESL/HSC/OPD",
                                    dept_div %in% c("ACCT", "ACCT&", "AGR", "AMT", "AUT", "AVF", "BIM",
                                                    "BUS", "BUS&", "CDL", "CPT", "CS", "CS&", "ECE", "ECED",
                                                    "ECED&", "EDUC", "EDUC&", "FAD", "HED", "IST",
                                                    "MAP", "MCT", "MA", "NUR", "SIM", "GIS", "UMS",
                                                    "WLD", "WKED") ~ "Workforce Education",
                                    TRUE ~ "Academic-Transfer")) %>%
    group_by(year, program_area) %>%
    summarise(
      ftes_count = round(sum(ftes_total)/3, 1)
    ) %>%
    left_join(tbl(con, "YRQ LU") %>% collect() %>% clean_names() %>% select(yr, year_long), by = c("year" = "yr")) %>%
    distinct_all()

}
