### missing package check
if (!requireNamespace("data.table")) install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table")
if (!requireNamespace("DT")) install.packages("DT", quiet = T)
if (!requireNamespace("magrittr")) install.packages("magrittr", quiet = T)
if (!requireNamespace("tidyverse")) install.packages("tidyverse", quiet = T)
if (!requireNamespace("hrbrthemes")) install.packages("hrbrthemes", repos = c("https://cinc.rud.is", "https://cloud.r-project.org/", quiet = T)