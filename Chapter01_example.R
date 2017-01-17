library(tidyverse)

drying_time <- read_tsv("Chapter01/Ex01.01.txt")

# We didn't bother with "trimmed mean" but here it is anyway.
drying_time %>% 
  summarise(n(), mean(hour), median(hour), mean(hour, trim = 0.2))

# A dotplot is a not-too-bad plot that puts the data on the real line. Here's
# how to make one in R with ggplot2.

drying_time %>% 
  ggplot(aes(x=hour)) + geom_dotplot()
