
#Cleaning Function 

library(dplyr)
library(janitor)

# Define the cleaning function
cleaning_penguins <- function(penguins_raw) {
      penguins_raw %>%
        remove_empty(c("rows", "cols")) %>%    # Remove empty rows and columns
        select(-starts_with("Delta"), -starts_with("Comments")) %>% # Remove columns starting with "Delta" or "Comments"
        clean_names()                    # Standardize column names

}


shorten_species <- function(penguins_raw) {
  data %>%
    mutate(species = sub(" .*", "", species))  # Keeps only the first word of 'species'
}
