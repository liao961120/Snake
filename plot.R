library(ggplot2)
theme_set(theme_bw())

data = read.csv("data/iris.csv")
plt = ggplot(data, aes(Sepal.Length, Petal.Width, color = Species)) +
    geom_point() +
    theme(legend.position = "none")

ggsave("figure/iris.png", plt, width = 8, height = 6.5)

