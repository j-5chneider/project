# 1. list requirements early
# (i.e., load libraries at the beginning) # JÜRGEN: YES
library(here)
library(tidyverse)
library(lubridate)

#----load-inflation----
# 2. use relative locations      # JÜRGEN: YES
# (i.e., relative paths instead absolute, names instead of indices)
games_raw <- readr::read_csv(
  # directly download and load data   # JÜRGEN: YES
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-16/games.csv"
)

#----transform-inflation----
# 3. document relevant information    # JÜRGEN: YES
# (i.e., variable names are documentation + comments)
games <- mutate(games_raw, date = str_c(month, "_", year) %>% # concatenate month and year
                  my()) # my = month year -> convert to date
