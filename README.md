# Friedman

An R package for my LIS 6371 final project.

## Purpose

Friedman is intended to help students check small datasets
before analysis. The first version summarizes missing values.

## Current function

`missing_summary(data)` reports the number and percentage
of missing values in each column of a data frame.
It does not change the original data.

## Planned functions

- `find_duplicates(data)`: identify repeated rows for review.
- `clean_names(data)`: standardize column names and keep them unique.

## Example

```r
library(Friedman)

scores <- data.frame(
  student = c('Ana', 'Luis', 'Maria'),
  grade = c(90, NA, 85)
)

missing_summary(scores)
```

## Details

Author: Omar Sanchez

Version: 0.0.0.9000

License: CC0

The current function uses base R.
