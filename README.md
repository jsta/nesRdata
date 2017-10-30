
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
#> # A tibble: 6 x 38
#>     pdf pagenum storet_code     state           name         county
#>   <int>   <int>       <chr>     <chr>          <chr>          <chr>
#> 1   474     100        2709 MINNESOTA      BIG STONE BIG STONE (MN)
#> 2   474     101        2710 MINNESOTA     BIRCH LAKE           CASS
#> 3   474     102        2711 MINNESOTA BLACKDUCK LAKE       BELTRAMI
#> 4   474     103        2712 MINNESOTA BLACKHOOF LAKE      CROW WING
#> 5   474     104        2713 MINNESOTA   BUFFALO LAKE         WRIGHT
#> 6   474     105        2714 MINNESOTA  CARRIGAN LAKE         WRIGHT
#> # ... with 32 more variables: lake_type <chr>, drainage_area <dbl>,
#> #   surface_area <dbl>, mean_depth <dbl>, total_inflow <dbl>,
#> #   retention_time <dbl>, retention_time_units <chr>, alkalinity <int>,
#> #   conductivity <int>, secchi <dbl>, tp <dbl>, po4 <dbl>, tin <dbl>,
#> #   tn <dbl>, p_pnt_source_muni <int>, p_pnt_source_industrial <int>,
#> #   p_pnt_source_septic <int>, p_nonpnt_source <int>, p_total <int>,
#> #   n_pnt_source_muni <int>, n_pnt_source_industrial <int>,
#> #   n_pnt_source_septic <int>, n_nonpnt_source <int>, n_total <int>,
#> #   p_total_out <int>, p_percent_retention <dbl>,
#> #   p_surface_area_loading <dbl>, n_total_out <int>,
#> #   n_percent_retention <dbl>, n_surface_area_loading <dbl>, lat <dbl>,
#> #   long <dbl>
```

### Download dynamic external data and store in file system

``` r
nes_get(version_id = "1")
```

#### List versions

``` r
nes_versions()
#> [1] "1"
```

#### Load data

``` r
dt <- nes_load(version_id = "1")
names(dt)
#> [1] "nes_data"
lapply(dt, head)
#> $nes_data
#> # A tibble: 6 x 38
#>     pdf pagenum storet_code     state           name         county
#>   <int>   <int>       <chr>     <chr>          <chr>          <chr>
#> 1   474     100        2709 MINNESOTA      BIG STONE BIG STONE (MN)
#> 2   474     101        2710 MINNESOTA     BIRCH LAKE           CASS
#> 3   474     102        2711 MINNESOTA BLACKDUCK LAKE       BELTRAMI
#> 4   474     103        2712 MINNESOTA BLACKHOOF LAKE      CROW WING
#> 5   474     104        2713 MINNESOTA   BUFFALO LAKE         WRIGHT
#> 6   474     105        2714 MINNESOTA  CARRIGAN LAKE         WRIGHT
#> # ... with 32 more variables: lake_type <chr>, drainage_area <dbl>,
#> #   surface_area <dbl>, mean_depth <dbl>, total_inflow <dbl>,
#> #   retention_time <dbl>, retention_time_units <chr>, alkalinity <int>,
#> #   conductivity <int>, secchi <dbl>, tp <dbl>, po4 <dbl>, tin <dbl>,
#> #   tn <dbl>, p_pnt_source_muni <int>, p_pnt_source_industrial <int>,
#> #   p_pnt_source_septic <int>, p_nonpnt_source <int>, p_total <int>,
#> #   n_pnt_source_muni <int>, n_pnt_source_industrial <int>,
#> #   n_pnt_source_septic <int>, n_nonpnt_source <int>, n_total <int>,
#> #   p_total_out <int>, p_percent_retention <dbl>,
#> #   p_surface_area_loading <dbl>, n_total_out <int>,
#> #   n_percent_retention <dbl>, n_surface_area_loading <dbl>, lat <dbl>,
#> #   long <dbl>
```
