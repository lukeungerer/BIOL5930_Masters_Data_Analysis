### Opening the excel sheet into R#############
carlyle_sediment <- read.csv("data/carlyle_sed.csv")


####Creating a working dataframe######
dfcs <-carlyle_sediment

########Converting items/g into particles/kg##############
dfcs$mp_abundance_particles_kg <- dfcs$mp_abundance_items_g *1000




