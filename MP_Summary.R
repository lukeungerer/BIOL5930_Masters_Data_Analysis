# Original Author: Natalie Herndandez
#Code modified and annotated by Luke Ungerer


## Load Packages
library(readr) # reading tabular data
library(dplyr) # data wrangling
library(tidyr) # data wrangling
library(janitor) # data wrangling

# other packages
library(here) # file path management

## Load Data
detail <- read.csv("data/water_mp_detail.csv")
samples <- read_csv("data/water_sample_info.csv")


## Create Color-Type Column
detail <- detail %>%
  unite("ColorType", Color:Type, sep = "_", remove = FALSE)


## Summarize Data
{r summarize-data}
summary <- detail %>%
  group_by(MPSID) %>% # groups data by MPSID
  summarise(total=n(), # counts the number of rows associated with each MPSID (to provide your total MP number)
            avgsize= mean(Length)) # averages the lengths of particles for the rows within each MPSID


## Size Bins
bins <- detail %>%
  mutate(size = case_when(Length >= 100 & Length <= 250.00 ~ 's1',
                          Length >= 250.01 & Length <= 500.00 ~ 's2',
                          Length >= 500.01 & Length <= 1000.00 ~ 's3',
                          Length >= 1000.01 & Length <= 2000.00 ~ 's4',
                          Length >= 2000.01 & Length <= 5000 ~ 's5')) # categorizes size bins by lengths of particles

sizes <- tabyl(bins, MPSID, size) # tabyl counts the number of particles in each size bin per MPSID


## Type/Color Bins
type <- tabyl(detail, MPSID, Type) # tabyl counts the number of particles in each type category per MPSID
color <- tabyl(detail, MPSID, Color) # tabyl counts the number of particles in each color category per MPSID
colortype <- tabyl(detail, MPSID, ColorType) # tabyl counts the number of particles in each color-type category per MPSID


## Merge Datasets
mp_summary <- merge(x = summary, y = samples, by = "MPSID") %>% # Combine the total counts/avg size with the sample info file
  mutate(mp_per_kg = total/Volume) %>% # Create the total/sample volume column (how findings are reported). Assumes units for vol. are kg
  select(MPSID, Volume, total, mp_per_kg, avgsize) # Select columns of interest

mp_summary <- merge(x = mp_summary, y = sizes, by = "MPSID") # Merge summary data with counts of size bins

mp_summary <- merge(x = mp_summary, y = type, by = "MPSID") # Merge summary data with counts of type bins

mp_summary <- merge(x = mp_summary, y = color, by = "MPSID") # Merge summary data with counts of color bins

mp_summary <- merge(x = mp_summary, y = colortype, by = "MPSID") # Merge summary data with counts of color-type bins


## Save File
write_csv(mp_summary, here("data/water_summary.csv")) # save to clean data folder
