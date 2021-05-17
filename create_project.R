library(usethis)

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






