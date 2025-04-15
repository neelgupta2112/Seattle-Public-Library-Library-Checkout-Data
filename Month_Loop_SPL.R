library(httr)
library(jsonlite)
library(purrr)

# Set the base URL for the Library checkout data
base_url <- "https://data.seattle.gov/resource/tmmm-ytt6.json"

# Function to fetch JSON data in chunks of 1,000,000 records
fetch_data <- function(where_clause, offset) {
  # Set up the parameters for each chunk request
  query_params <- list(
    "$where" = where_clause,  # Use the WHERE clause
    "$limit" = as.integer(1000000),  # Fetch up to 1,000,000 records per request
    "$offset" = offset  # Use offset for pagination
  )
  
  # Make the request and return the data for this chunk
  GET(base_url, query = query_params) |>
    content("text", encoding = "UTF-8") |>
    fromJSON()  # Convert the JSON response to R data
}

# Initialize empty list to store all results
all_results <- list()

# Loop through all months and years starting from January 2006 up to the current month
start_year <- 2006
end_date <- Sys.Date()
end_year <- as.integer(format(end_date, "%Y"))
end_month <- as.integer(format(end_date, "%m"))

for (year in start_year:end_year) {
  for (month in 1:12) {
    print(year)
    print(month)
    # Stop the loop when the month/year exceeds the current date
    if (year == end_year && month > end_month) {
      break
    }
    
    # Create a WHERE clause for each year/month combination
    where_clause <- sprintf("checkoutyear = %d AND checkoutmonth = %d", year, month)
    
    # Fetch total count of records for this year/month
    count_params <- list(
      "$select" = "COUNT(*) AS total_count",  # We just want the total count
      "$where" = where_clause  # Use our search filter
    )
    
    count_data <- GET(base_url, query = count_params) |>
      content("text", encoding = "UTF-8") |>
      fromJSON() |>
      as.numeric()  # Convert the result to a number
    
    # Skip this month/year if there are no records
    if (count_data == 0) {
      next
    }
    
    # Fetch data in chunks based on the total count
    results <- vector("list", length = ceiling(count_data / 1000000))
    
    for (i in seq_along(results)) {
      offset <- (i - 1) * 1000000  # Calculate the offset for each chunk
      results[[i]] <- fetch_data(where_clause, as.integer(offset))  # Store each chunk in the results list
    }
    
    # Combine the chunks into one data frame for this month/year
    month_results <- purrr::list_rbind(results)
    
    # Append the results for this month/year to the all_results list
    all_results[[paste0(year, "-", month)]] <- month_results
  }
}

# Combine all month/year results into one data frame
checkouts <- purrr::list_rbind(all_results)
write.csv(checkouts, file = "Path/to/desired/location", row.names = FALSE)

# Print some data for checking
print(head(checkouts))
