
<!-- README.md is generated from README.Rmd. Please edit that file -->
Overview
--------

bmotif counts occurrences of motifs in bipartite networks, as well as the number of times each node appears in each unique position within motifs. bmotif was intended for use in ecology but its methods are general and can be applied to any bipartite graph. bmotif uses operations directly on the incidence matrix so that analyses are fast, even for large matrices.

Installation
------------

Install the devtools package:

``` r
install.packages("devtools")
```

Install `bmotif`:

``` r
devtools::install_github("SimmonsBI/bmotif")
```

Use
---

bmotif considers all 44 unique bipartite motifs up to six nodes. Within these motifs there are 148 unique positions.

`bmotif` has two main functions: `mprofile` and `positions`. `mprofile` counts occurrences of motifs in a bipartite network. `positions` counts the number of times each node in a network occurs in each of the positions within the motifs.