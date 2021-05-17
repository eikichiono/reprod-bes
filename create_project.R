# Workshop on reproducible BES
# 2021.5.17 by Hongyuan Jia

library(usethis)
library(eplusr)
library(tidyverse)
library(fs)
library(here)
library(targets)

# Create a project
create_project("/Users/eikichiono/Documents/07_Program_codes/R/reprod-bes")

# Create R.profile
usethis::edit_r_profile()

# options(
#   # default author name. change accordingly
#   usethis.full_name = "Hongyuan Jia",
#   # default values in the DESCRIPTION file. change accordingly
#   usethis.description = list(
#     "Authors@R" = utils::person(
#       # default author name
#       "Hongyuan", "Jia",
#       # default author email
#       email = "hongyuanjia@outlook.com",
#       # default role, i.e. aut = author, cre = creator
#       role = c("aut", "cre"),
#       # default ORCID
#       comment = c(ORCID = "0000-0002-0075-8183")
#     ),
#     # default license of the R code
#     License = "MIT + file LICENSE",
#     # default package initial version
#     Version = "0.0.0.9000"
#   )
# )

# Create description
usethis::use_description(check_name = FALSE)

# Create license
usethis::use_mit_license("Eikichi Ono")

# Create readme.md
usethis::use_readme_md()

# Set git user name
usethis::use_git_config(user.name = "Eikichi Ono", user.email = "e0491209@u.nus.edu")

usethis::use_git()

use_directory("data-raw")

is_avail_eplus(9.4)
eplus_config(9.4)

# get EnergyPlus v9.4 installation path
dir_eplus <- eplus_config(9.4)$dir

path_model <- path(dir_eplus, "ExampleFiles/RefBldgMediumOfficeNew2004_Chicago.idf")
path_weather <- path(dir_eplus, "WeatherData/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.epw")

file_copy(
  path = c(path_model, path_weather),
  new_path = here("data-raw", path_file(c(path_model, path_weather))),
  overwrite = TRUE
)

dir_ls(here("data-raw"))
#> /Users/runner/ReprodBES/data-raw/RefBldgMediumOfficeNew2004_Chicago.idf
#> /Users/runner/ReprodBES/data-raw/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.epw

# Pane "Git" -> Commit

use_directory("analysis")

# Edit run.R

tar_edit()

# Edit _targets.R

# Addins -> Search "targets" -> Run a target pipeline in the foreground

# Addins -> Search "targets" -> Visualize a targets pipeline -> Select Pane "Viewer"

tar_read(plot_end_use)

tar_read(p_end_use)






