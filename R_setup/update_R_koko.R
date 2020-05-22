# |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
# UPDATE R  
# 25 February 2020
# 
# |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

# ***********************************************************************************
# NOTES
# 
#
# todo:
#   (x) 
#   (x) 
#   (x) 
# 
# ***********************************************************************************


# ---- save packages ----

library(tidyverse)
installed.packages() %>%
  as.data.frame() %>%
  select(Package) %>%
  as.vector() -> needed_packages # saving packages installed before updating R version
needed_packages <- paste(unlist(needed_packages))
save(needed_packages, file = "needed_packages.RData")


# ----- >>> update R from CRAN

t <- installed.packages()
t <- as.data.frame(t)
t <- t[, "Package" ]
base_packages <- as.vector(t)   
base_packages <- paste(unlist(base_packages))
save(base_packages, file = "base_packages.RData")

# ----- >>> add packages not in base installation

load("needed_packages.RData", verbose = TRUE)

for (p in setdiff(packages, installed.packages()[,"Package"]))
  install.packages(p)

setdiff(needed_packages,base_packages)

install.packages(as.vector(needed_packages))

# store version of R
x <- system2("R", args = "--version", stdout = TRUE)
x <- x[1]

