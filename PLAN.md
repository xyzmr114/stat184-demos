# Project Plan

## Part 1: Project Plan

### Goal
Build a collection of beginner-friendly R demo scripts that illustrate core STAT 184 topics,
including data wrangling, visualization, and exploratory data analysis, so that students
can reference working examples alongside course material.

### Needs
- A set of R scripts covering the main topic areas from STAT 184
- A clear README so anyone visiting the repo understands what it contains and how to use it
- Scripts that use common tidyverse packages (dplyr, tidyr, ggplot2) and built-in datasets
  so no external data downloads are required

### Steps
1. Identify the key topic areas to cover (data wrangling, visualization, EDA)
2. Write a demo script for each topic using built-in R datasets (e.g., iris, mtcars)
3. Keep each script self-contained with package install checks at the top
4. Update the README to describe all included scripts and usage instructions
5. Review scripts to make sure they run cleanly and produce meaningful output

---

## Part 2: Repository Setup and Maintenance Plan

### Goal
Maintain a well-organized GitHub repository that follows version control best practices,
making it easy to track changes, collaborate, and demonstrate proficiency with Git workflows.

### Needs
- A default `main` branch that always holds stable, working code
- A `dev` branch for active development before changes are merged into `main`
- A `.gitignore` to keep R session artifacts out of the repo
- An Issues system to track tasks and bugs in an organized way
- Pull Requests used to merge `dev` into `main` with clear descriptions of each change

### Steps
1. Initialize the repo on GitHub with a `main` branch and a `README`
2. Create a `dev` branch off `main` for all active development
3. Add a `.gitignore` configured for R projects
4. Use GitHub Issues to plan and track each piece of work before starting it
5. Make small, focused commits on `dev` with clear imperative-style messages
6. Open a Pull Request from `dev` to `main` whenever a meaningful set of changes is ready,
   including a title and description of what the PR accomplishes
7. Merge the PR into `main` and close any related issues
8. Repeat steps 4–7 for each new feature or fix
