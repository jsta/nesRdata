
<!-- README.md is generated from README.Rmd. Please edit that file -->
National Eutrophication Survey Data Package
===========================================

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/nesRdata)](https://cran.r-project.org/package=nesRdata)

Installation
------------

``` r
# install devtools if not found
# install.packages(devtools)
devtools::install_github("jsta/nesRdata")
```

Usage
-----

``` r
library(nesRdata)
```

### View static compilation of all lakes

``` r
data(nes)
head(nes)
#>   pdf pagenum storet_code     state           name         county
#> 1 474     100        2709 MINNESOTA      BIG STONE BIG STONE (MN)
#> 2 474     101        2710 MINNESOTA     BIRCH LAKE           CASS
#> 3 474     102        2711 MINNESOTA BLACKDUCK LAKE       BELTRAMI
#> 4 474     103        2712 MINNESOTA BLACKHOOF LAKE      CROW WING
#> 5 474     104        2713 MINNESOTA   BUFFALO LAKE         WRIGHT
#> 6 474     105        2714 MINNESOTA  CARRIGAN LAKE         WRIGHT
#>   lake_type drainage_area surface_area mean_depth total_inflow
#> 1   NATURAL       3004.40        51.03        3.4          3.3
#> 2   NATURAL            NA         5.19        3.0           NA
#> 3   NATURAL         75.11        11.10        4.5          0.4
#> 4   NATURAL         20.72         0.74        4.4          0.1
#> 5   NATURAL        113.96         6.11        4.4          0.6
#> 6   NATURAL            NA         0.66         NA           NA
#>   retention_time retention_time_units alkalinity conductivity secchi    tp
#> 1            1.7                years        131          800    1.0 0.159
#> 2             NA                years        106          210    2.4 0.019
#> 3            4.2                years        128          243    1.7 0.038
#> 4          257.0                 days        103          230    1.6 0.043
#> 5            1.4                years        167          395    1.0 0.209
#> 6             NA                years        185          590    0.3 1.215
#>     po4   tin tn p_pnt_source_muni p_pnt_source_industrial
#> 1 0.126 0.335 NA              7696                      23
#> 2 0.009 0.090 NA                NA                      NA
#> 3 0.019 0.195 NA               676                      NA
#> 4 0.024 0.185 NA               639                      NA
#> 5 0.160 0.795 NA              4821                      NA
#> 6 0.785 0.290 NA                NA                      NA
#>   p_pnt_source_septic p_nonpnt_source p_total n_pnt_source_muni
#> 1                 213            8014   15946             22599
#> 2                  NA              NA      NA                NA
#> 3                  NA             916    1592              2023
#> 4                   9             254     902              1914
#> 5                  23            1129    5973             10086
#> 6                  NA              NA      NA                NA
#>   n_pnt_source_industrial n_pnt_source_septic n_nonpnt_source n_total
#> 1                      NA                8036          188812  219447
#> 2                      NA                  NA              NA      NA
#> 3                      NA                  NA           27329   29351
#> 4                      NA                 268            6522    8703
#> 5                      NA                 853           18000   28939
#> 6                      NA                  NA              NA      NA
#>   p_total_out p_percent_retention p_surface_area_loading n_total_out
#> 1       15846                   1                   0.31      214068
#> 2          NA                  NA                     NA          NA
#> 3         717                  55                   0.14       16091
#> 4         141                  84                   1.22        5075
#> 5        3950                  34                   0.98       51429
#> 6          NA                  NA                     NA          NA
#>   n_percent_retention n_surface_area_loading      lat      long  chl
#> 1                   2                    4.3 45.30833 -96.45667 16.5
#> 2                  NA                     NA 46.93333 -94.52500  6.2
#> 3                  45                    2.6 47.73889 -94.62917 14.5
#> 4                  42                   11.8 46.47167 -94.01056 12.8
#> 5                  NA                    4.7 45.17083 -93.88000 38.0
#> 6                  NA                     NA 45.05833 -93.95833 84.3
```

### Download dynamic external data to temporary location

``` r
nes_get(version_id = "1")
```

### Download dynamic external data and cache in file system

``` r
nes_get(version_id = "1", dest_folder = cache_path())
```

#### List cached (non-temporary) versions

``` r
nes_versions()
```

#### Load data

``` r
dt <- nes_load(version_id = "1")
names(dt)
lapply(dt, head)
```

Metadata
--------

See: <https://github.com/ReproducibleQM/NES/blob/master/METADATA.md>

References
----------

Stachelek, J., Ford, C., Kincaid, D., King, K., Miller, H. and Nagelkirk, R., 2018. The National Eutrophication Survey: lake characteristics and historical nutrient concentrations. Earth System Science Data, 10(1), pp.81-86.
