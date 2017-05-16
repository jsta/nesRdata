
<!-- README.md is generated from README.Rmd. Please edit that file -->
National Eutrophication Survey Data Package
===========================================

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

### Download external data and store in file system

``` r
nes_get(version_id = "1")
```

### List versions

``` r
nes_versions()
#> [1] "1"
```

### Load data

``` r
dt <- nes_load(version_id = "1")
names(dt)
#> [1] "nes_data"
lapply(dt, head)
#> $nes_data
#>   X pdf pagenum storet_code     state           name
#> 1 1 474     100        2709 MINNESOTA      BIG STONE
#> 2 2 474     101        2710 MINNESOTA     BIRCH LAKE
#> 3 3 474     102        2711 MINNESOTA BLACKDUCK LAKE
#> 4 4 474     103        2712 MINNESOTA BLACKHOOF LAKE
#> 5 5 474     104        2713 MINNESOTA   BUFFALO LAKE
#> 6 6 474     105        2714 MINNESOTA  CARRIGAN LAKE
#>                               county lake_type drainage_area surface_area
#> 1 BIG STONE (MN); ROBERTS GRANT (SD)   NATURAL       3004.40        51.03
#> 2                               CASS   NATURAL            NA         5.19
#> 3                           BELTRAMI   NATURAL         75.11        11.10
#> 4                          CROW WING   NATURAL         20.72         0.74
#> 5                             WRIGHT   NATURAL        113.96         6.11
#> 6                             WRIGHT   NATURAL            NA         0.66
#>   mean_depth total_inflow retention_time retention_time_units alkalinity
#> 1        3.4          3.3            1.7                years        131
#> 2        3.0           NA             NA                years        106
#> 3        4.5          0.4            4.2                years        128
#> 4        4.4          0.1          257.0                 days        103
#> 5        4.4          0.6            1.4                years        167
#> 6         NA           NA             NA                years        185
#>   conductivity sechhi    tp   po4   tin tn p_pnt_source_muni
#> 1          800    1.0 0.159 0.126 0.335 NA              7696
#> 2          210    2.4 0.019 0.009 0.090 NA                NA
#> 3          243    1.7 0.038 0.019 0.195 NA               676
#> 4          230    1.6 0.043 0.024 0.185 NA               639
#> 5          395    1.0 0.209 0.160 0.795 NA              4821
#> 6          590    0.3 1.215 0.785 0.290 NA                NA
#>   p_pnt_source_industrial p_pnt_source_septic p_nonpnt_source p_total
#> 1                      23                 213            8014   15946
#> 2                      NA                  NA              NA      NA
#> 3                      NA                  NA             916    1592
#> 4                      NA                   9             254     902
#> 5                      NA                  23            1129    5973
#> 6                      NA                  NA              NA      NA
#>   n_pnt_source_muni n_pnt_source_industrial n_pnt_source_septic
#> 1             22599                      NA                8036
#> 2                NA                      NA                  NA
#> 3              2023                      NA                  NA
#> 4              1914                      NA                 268
#> 5             10086                      NA                 853
#> 6                NA                      NA                  NA
#>   n_nonpnt_source n_total p_total_out p_percent_retention
#> 1          188812  219447       15846                   1
#> 2              NA      NA          NA                  NA
#> 3           27329   29351         717                  55
#> 4            6522    8703         141                  84
#> 5           18000   28939        3950                  34
#> 6              NA      NA          NA                  NA
#>   p_surface_area_loading n_total_out n_percent_retention
#> 1                   0.31      214068                   2
#> 2                     NA          NA                  NA
#> 3                   0.14       16091                  45
#> 4                   1.22        5075                  42
#> 5                   0.98       51429                  NA
#> 6                     NA          NA                  NA
#>   n_surface_area_loading      lat      long
#> 1                    4.3 45.30833 -96.45667
#> 2                     NA 46.93333 -94.52500
#> 3                    2.6 47.73889 -94.62917
#> 4                   11.8 46.47167 -94.01056
#> 5                    4.7 45.17083 -93.88000
#> 6                     NA 45.05833 -93.95833
```
