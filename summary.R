library(dplyr)
data = read.csv("data/iris.csv") %>%
    group_by(Species) %>%
    summarise(
        n = n(),
        Sepal.Length = mean(Sepal.Length),
        Petal.Width = mean(Petal.Width)
    )
readr::write_csv(data, "data/table.csv")
