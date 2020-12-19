mointeRing repoRt 0.0.0.9000 <img src="man/hex.png" align="right" style="width:20px;height:20px;"/>
===================================================================================================

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

BBCC Branding
=============

To provide uniform branding throughout the Mission Fulfillment Report,
there are two functions that can be used.

`bbcc_theme()`
--------------

By using the `bbcc_theme()` function while building a graphic will
modify non-data components of the data plot. It is recommended that this
function be used every time a graphic is created as to have consistency
between graphs. All of the modifiable parts of a graphic, the
`bbcc_theme()` only focusess ona few including text, grid, legend, and
strip elements.

Below is a plot that uses is the default theme.

``` r
plot <- mtcars %>%
  ggplot(aes(mpg, cyl)) +
  geom_point() +
  labs(
    title = "Mpg v. Cyl"
  )
```

As you can see above the theme may not be exactly what we would be
looking for. Instead of changing ever plot we have indidivudally we can
just call the `bbcc_theme()` function.

``` r
plot +
  theme_bbcc() +
  theme(
    plot.title = element_text(size = 25)
  )
```

As you can see, using the `theme_bbcc()` function changes the plot
without needing to individually specify each element. This will avoid
the potential to forget something if all the plots that are bound to be
included. Using the bbcc theme also does not repress the ability to use
the regular theme component for those elements that are particular to a
plot.

`bbcc_cols()`
-------------
