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

Student Success
===============

The student success section of the mission fulfillment covers things
like Full-time Equivalent Enrollment (FTE), Student Achievement
Initiative (SAI) points, and many other aspects. To help with some of
these aspects, we create some functions that can retrieve and plot the
desired data.

Total student FTE (Full‐time Equivalent)
----------------------------------------

To retrieve the information regarding total student FTE, use the
`program_area_fte()` function. When you run the function a dataframe
will be returned containing a summarized count of FTE by area for each
academic year available.

``` r
program_area_ftes()
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
