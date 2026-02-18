## Comment before load_all() or install

library(devtools)
library(usethis)
library(roxygen2)
library(here)

## Create package
## use "." to add pkg files to an existing project.
## Requires overriding the .Rproj file
usethis::create_package(".")

## Add dependencies, i.e. all the packages that are needed to run the package's functions. Here is a non exhaustive list
## + Shiny
usethis::use_package("bslib")
usethis::use_package("bsicons")
usethis::use_package("shiny")
usethis::use_package("shinyjs")
usethis::use_package("shinyWidgets")
usethis::use_package("shinyFiles")
usethis::use_package("shiny.i18n")

## + Tidyverse (Better to call packages individually)
usethis::use_package("magrittr")
usethis::use_package("readr")
usethis::use_package("tidyselect")
usethis::use_package("dplyr")
usethis::use_package("ggplot2")
usethis::use_package("tibble")
usethis::use_package("forcats")
usethis::use_package("purrr")
usethis::use_package("stringr")
usethis::use_package("rlang")
# usethis::use_package("tidyverse", type = "depends")

## + Geospatial
usethis::use_package("sf")
usethis::use_package("terra")
usethis::use_package("units")

## Add license
usethis::use_mit_license()

## Add github actions
usethis::use_github_action_check_standard()
#usethis::use_github_action('check_standard')


## Run often, as soon as you have a new function created or updated
devtools::load_all()

## Update function documentation
devtools::document()

## Runs checks to find errors in the code that prevent functions
## to work or notes that would make the package refused by CRAN.
## Useful for debugging
devtools::check()
