# BIOL5930_Masters_Data_Analysis

Analysis of my data for my master's thesis project on microplastics 
distributions in rural reservoir systems in conjuction with the BIOL 5930 
Special Topics Data Analysis course. This project seeks to evaluate how
microplastics are transported and stored between two reservoirs, Lake 
Shelbyville and Carlyle Lake, connected by the Kaskaskia River in a 
predominantly agricultural watershed. The water column and the sediment bed were
the two environmental compartments in this study. Microplastic densities at 
study sites throughout both reservoirs and the Kaskaskia were recorded as well 
as morphological characteristics (i.e., color, shape, size) and the 
identification of their polymer type. Water quality paramaters and sediment
bed characteristics were analyzed in conjuction to microplastic parameters, too.

The naming system for sites will be based off of year, month, day, and site: 
(yymmddsite). Here is an example of the site code for site 28 at Lake
Shelbyville on June 6th, 2024: 240606S28. Water quality parameters, sediment bed
characteristics, microplastic densities, and all other files containing data 
will be structured to be all lowercase with spaces and units of measure being 
separated by underscores. An example of this turbidity_ntu for a variable or 
mp_microscope_sheet with mp referring to microplastics. 

The structure for my data this project will go as follows:

-Conversion folder with code embedded to convert sediment grain size values from 
grams to kilograms so that the abundance of microparticles in the sediments 
could be compared to those in the water column (1 L = 1 kg). 

-WQ_Analysis folder where I determined if turbidity was significantly related to 
the abundance of microparticles in the water column. 

-MP_Summary.R folder where I organized all of my microparticle data so that the 
abundance of all color-morphology combinations (e.g., blue fibers, red foams,
purple fragments, etc.) of detected microparticles were summarized and exported
as an Excel.csv. 

-Data_Normality.R folder where I determined if my data sets were normally distributed. 
Data that was not normally distributed had undergone Wilcoxon Mann-Whitney U 
tests. 

