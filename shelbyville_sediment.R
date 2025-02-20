### Opening the excel sheet into R#############
shelbyville_sediment <- read.csv("data/shelbyville_sed.csv")

####Creating a working dataframe######
dfss <-shelbyville_sediment

########Converting items/g into particles/kg##############
dfss$mp_abundance_particles_kg <- dfss$mp_abundance_items_g *1000
