# Data Wrangling Demo - STAT 184
# Demonstrates basic dplyr and tidyr operations

# Install required packages if not already installed
if (!requireNamespace("dplyr", quietly = TRUE)) install.packages("dplyr")
if (!requireNamespace("tidyr", quietly = TRUE)) install.packages("tidyr")


library(dplyr)
library(tidyr)

# Sample dataset
students <- data.frame(
  name = c("Alice", "Bob", "Carol", "Dave", "Eve"),
  exam1 = c(88, 75, 92, 65, 80),
  exam2 = c(91, 70, 88, 72, 85),
  major = c("Stats", "Math", "Stats", "CS", "Math")
)

# Group by major and summarize
summary_by_major <- students %>%
  group_by(major) %>%
  summarize(
    avg_exam1 = mean(exam1),
    avg_exam2 = mean(exam2),
    count = n()
  ) %>%
  arrange(desc(avg_exam1))

print(summary_by_major)

# Pivot to long format
students_long <- students %>%
  pivot_longer(cols = starts_with("exam"),
               names_to = "exam",
               values_to = "score")

print(students_long)
