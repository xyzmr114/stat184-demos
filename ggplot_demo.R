# ggplot2 Visualization Demo - STAT 184

library(ggplot2)

# Scatter plot
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(
    title = "Car Weight vs Fuel Efficiency",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon",
    color = "Cylinders"
  ) +
  theme_minimal()

# Histogram
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 3, fill = "steelblue", color = "white") +
  labs(title = "Distribution of MPG", x = "MPG", y = "Count") +
  theme_minimal()
