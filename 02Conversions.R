###Converting the abundance of microparticles in the sediment bed from items/g to items/kg to better relate it to the abundance of microparticles in 1 L of water, as 1L is the same volume as 1 kg.


###Loading in Carlyle sediment data
carlyle_sediment <- read.csv("data/carlyle_sed.csv")


####Creating a working dataframe
dfcs <-carlyle_sediment

########Converting items/g into particles/kg
dfcs$mp_abundance_particles_kg <- dfcs$mp_abundance_items_g *1000


###Loading in Shelbyville sediment data
shelbyville_sediment <- read.csv("data/shelbyville_sed.csv")

####Creating a working dataframe######
dfss <-shelbyville_sediment

########Converting items/g into particles/kg##############
dfss$mp_abundance_particles_kg <- dfss$mp_abundance_items_g *1000



###Loading in Kaskaskia sediment data
kaskaskia_sediment <- read.csv("data/kaskaskia_sed.csv")

####Creating a working dataframe######
dfks <-kaskaskia_sediment

########Converting items/g into particles/kg##############
dfks$mp_abundance_particles_kg <- dfks$mp_abundance_items_g *1000
kaskaskia_sediment <- read.csv("data/kaskaskia_sed.csv")

####Creating a working dataframe######
dfks <-kaskaskia_sediment

########Converting items/g into particles/kg##############
dfks$mp_abundance_particles_kg <- dfks$mp_abundance_items_g *1000

