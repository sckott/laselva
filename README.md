laselva
=======



[![R-check](https://github.com/sckott/laselva/workflows/R-check/badge.svg)](https://github.com/sckott/laselva/actions)
[![codecov](https://codecov.io/gh/sckott/laselva/branch/master/graph/badge.svg)](https://codecov.io/gh/sckott/laselva)

Access to Global Forest Inventory Data

Please cite `laselva` if you use it in a paper: `citation(package = 'laselva')`

## Data sources

- French IGN Institut National de L'Information Geographique et Forestiere. Need to be updated to work from downloaded zip data
- [Spain][esp]
- European plots [Scientific Data paper][eupaper], [dataset][eufig]
- Australian plots [Ecology paper][auspaper], [dataset][ausfig]
- United States Forest Inventory and Analysis (FIA)
- Japan Ministry of the Environment, Monitoring Sites 1000 Project, [description][jpn]

## System Dependencies

If you want to get Spanish data, you'll need a system dependency called [mdbtools][]. mdbtools is not required for any other functions. Installation for major platforms:

- macos: `brew install mdbtools`
- deb: `apt-get install mdbtools`
- fedora: `yum install mdbtools`
- windows: not sure, anyone?

## Install


```r
remotes::install_github("kunstler/laselva")
```


```r
library("laselva")
```

The `emld` R package is required for EML metadata access in `ls_fetch_jpn()`. If you don't have it
installed we'll just return an empty list

## Meta

* Please [report any issues or bugs](https://github.com/kunstler/laselva/issues).
* License: MIT
* Get citation information for `laselva` in R doing `citation(package = 'laselva')`
* Please note that this project is released with a [Contributor Code of Conduct][coc]
By participating in this project you agree to abide by its terms.

[coc]: https://github.com/sckott/laselva/blob/master/.github/CODE_OF_CONDUCT.md
[auspaper]: https://doi.org/10.1890/14-0458R.1
[ausfig]: https://figshare.com/collections/Long-term_stem_inventory_data_from_tropical_rain_forest_plots_in_Australia/3307029
[eupaper]: https://doi.org/10.1038/sdata.2016.123
[eufig]: https://doi.org/10.6084/m9.figshare.c.3288407.v1
[esp]: https://www.miteco.gob.es/fr/biodiversidad/servicios/banco-datos-naturaleza/informacion-disponible/ifn3_base_datos_1_25.aspx
[jpn]: http://db.cger.nies.go.jp/JaLTER/ER_DataPapers/archives/2011/ERDP-2011-01/metadata
[mdbtools]: https://github.com/brianb/mdbtools
