library(ggplot2)

# Read the CSV file
data <- read.csv("../data/placement.csv")

# Create the linear regression model
model <- lm(package ~ cgpa, data = data)

# Print the summary of the model to see the coefficients
summary(model)

# Create the scatter plot with a regression line
scatter_plot <- ggplot(data, aes(x = cgpa, y = package)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Add regression line
  labs(x = "CGPA (scale of 10)",
       y = "Salary Package (million INR)") +
  theme_minimal()

# Save the plot as a PNG image
ggsave("../plots/scatter_plot_with_lm.png", plot = scatter_plot, width = 8, 
       height = 6, dpi = 300)
