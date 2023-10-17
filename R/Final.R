# Importing libraries
library(ggplot2)
library(tidyverse)

# Import data
racks <- read.csv("join_table.csv")

# Bike racks per tract histogram
hist <- ggplot(racks, aes(x=Sum_count)) +
  geom_histogram(binwidth=20, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
  labs(y="Frequency", x="Number of Bike Racks in Census Tract")+
  ggtitle("Number of Bike Racks per Census Tract")
ggsave(hist, file = "plot_final.jpg", width=4, height=3)

# Bike Racks Vs. Population
graph <-ggplot(racks, aes(x=Sum_count, y=Population))+
  geom_point(color="#69b3a2")+
  ggtitle("Bike Racks Vs. Population")+
  labs(y="Population in Census Tract", x="Bike Racks in Census Tract")+
  theme_linedraw()
ggsave(graph, file = "graph.jpg", width=4, height=3)