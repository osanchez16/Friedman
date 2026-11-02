
#' Summarize Missing Values
#'
#' Count missing values and calculate their percentage in each column.
#'
#' @param data A data frame.
#' @return A data frame containing column names, missing counts,
#'   and missing percentages. Percentages are NA when there are no rows.
#' @export
#' @examples
#' scores <- data.frame(
#'   student = c('Ana', 'Luis', 'Maria'),
#'   grade = c(90, NA, 85)
#' )
#' missing_summary(scores)
missing_summary <- function(data) {

  if (!is.data.frame(data)) {
    stop('Please provide a data frame.')
  }

  missing_count <- colSums(is.na(data))

  if (nrow(data) == 0) {
    missing_percent <- rep(NA_real_, ncol(data))
  } else {
    missing_percent <- round(
      missing_count / nrow(data) * 100, 2
    )
  }

  results <- data.frame(
    column = names(data),
    missing_count = as.integer(missing_count),
    missing_percent = as.numeric(missing_percent),
    row.names = NULL
  )

  return(results)
}

