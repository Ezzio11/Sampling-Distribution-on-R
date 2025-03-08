# Gamma Distribution Sampling and Analysis

This project generates and analyzes random samples from a **Gamma(α=1, β=5)** distribution. It examines sample means, compares theoretical and empirical statistics, and visualizes results using histograms and density plots.

## Features
- **Generates 1000 samples** (each of size 10) from a Gamma(1,5) distribution.
- Computes **mean and variance** of the sample means (`x̄`).
- Compares **theoretical vs. empirical** statistics.
- **Visualizes** distributions using histograms and overlaid density plots.

## Dependencies
Ensure you have R installed. No additional packages are required.

## Usage
1. Run the script in RStudio or the R console.
2. View the calculated statistics and plots.

## Statistical Calculations
- **Parent Distribution Mean:** \( \alpha \beta = 1 \times 5 = 5 \)
- **Parent Distribution Variance:** \( \alpha \beta^2 = 1 \times 5^2 = 25 \)
- **Theoretical Mean of x̄:** \( 5 \)
- **Theoretical Variance of x̄:** \( 2.5 \)
- **Empirical Mean & Variance of x̄:** Computed from the samples.

## Visualization
- **Histogram of x̄**: Displays the distribution of sample means.
- **Gamma Density Curve Overlay**: Compares sample data with the parent distribution.
- **Normal Density Curve Overlay**: Compares sample means to a theoretical normal distribution.

## License
This project is open-source and free to use.
