### Opening the excel sheet into R#############
kaskaskia_sediment <- read.csv("data/kaskaskia_sed.csv")

####Creating a working dataframe######
dfks <-kaskaskia_sediment

########Converting items/g into particles/kg##############
dfks$mp_abundance_particles_kg <- dfks$mp_abundance_items_g *1000