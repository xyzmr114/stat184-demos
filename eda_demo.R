# Exploratory Data Analysis Demo - STAT 184
# Demonstrates common EDA techniques

library(dplyr)

# Use built-in iris dataset
data(iris)

# Summary statistics
cat("=== Summary Statistics ===\n")
print(summary(iris))

# Check for missing values
cat("\n=== Missing Values ===\n")
print(colSums(is.na(iris)))

# Correlation matrix (numeric columns only)
cat("\n=== Correlation Matrix ===\n")
numeric_cols <- iris %>% select(where(is.numeric))
print(round(cor(numeric_cols), 2))

# Count by species
cat("\n=== Count by Species ===\n")
iris %>% count(Species) %>% print()
