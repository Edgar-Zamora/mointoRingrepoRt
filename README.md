mointeRing repoRt 0.0.0.9000
============================

[Edgar Zamora \| Twitter:
`@Edgar_Zamora_`](https://twitter.com/Edgar_Zamora_)

The `mointoRingrepoRt` package is a collection of functions that will
aid in the production of the Annual [Mission Fulfillment Monitoring
Report](https://www.bigbend.edu/monitoring-reports/) that is produced by
the Big Bend [Institutional Research and Planning
Department](https://www.bigbend.edu/information-center/institutional-research-planning/).

To install the `mointoRingrepoRt` package run the following code:

``` r
devtools::install_github("Edgar-Zamora/mointoRingrepoRt")
```

Student Succcess
================

Total Student FTE (Full-time Equivalent)
----------------------------------------

The `program_area()` is a function that will return the FTE counts for
each program area at Big Bend. The only argument that is present within
the function is `last_yr` which asks that you include the latest
complete year of data in the data warehouse. Doing so is necessary
because if not than the graphic and table will reflect quarterly data
instead of annual data.

By setting the `last_yr` argument to `"B90"` I am telling the function
to return data regarding program FTE’s starting in “B23” to “B90”. The
lower limit of “B23” is automatically defined and will not change.

``` r
program_area_fte(last_yr = "B90")
```

Enrollment by modality
----------------------

The `modeality_fte()` function will return a dataframe containing the
FTE for each modality of a class. The classification of what constitutes
certain modalities is defined within the R function. The only argument
that needs defining is the `last_yr` one, which asks that you include
the latest complete year of data in the data warehouse. Doing so is
necessary because if not than the graphic and table will reflect
quarterly data instead of annual data.

``` r
modality_fte(last_yr = "B90")
```
