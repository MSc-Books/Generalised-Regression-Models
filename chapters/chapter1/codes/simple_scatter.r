library(ggplot2)

data <- read.csv("../data/placement.csv")

scatter_plot <- ggplot(data, aes(x = cgpa, y = package)) +
  geom_point(color = "blue") +
  labs(x = "CGPA (scale of 10)",
       y = "Salary Package (million INR)") +
  theme_minimal()

ggsave("../plots/scatter_plot.png", plot = scatter_plot, width = 8, 
       height = 6, dpi = 300)