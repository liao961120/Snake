args = commandArgs(trailingOnly=TRUE)
seed = which('--seed' == args)
seed = as.integer(args[seed + 1])

if (is.na(seed)) seed = 10
set.seed(seed)

idx = sample(1:nrow(iris), size = 80)
readr::write_csv(iris[idx, ], "iris.csv")
