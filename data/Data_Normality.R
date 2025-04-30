##########Q-Q Plot Sediment MP Abundance vs GWC

###Load the Carlyle data
carlyle_sediment <- read.csv("data/carlyle_sed.csv")

####Defining the response and predictor variables
response <- carlyle_sediment$mp_abundance_items_g
predictor <- carlyle_sediment$gwc

# Fit the linear regression model
lm_model <- lm(gwc ~ mp_abundance_items_g, data = carlyle_sediment)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)


#####Load Shelbyville sediment data
shelbyville_sediment <- read.csv("data/shelbyville_sed.csv")

####Defining the response and predictor variables
response <- shelbyville_sediment$mp_abundance_items_g
predictor <- shelbyville_sediment$gwc

# Fit the linear regression model
lm_model <- lm(gwc ~ mp_abundance_items_g, data = shelbyville_sediment)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)


####Defining the response and predictor variables
response <- shelbyville_sediment$mp_abundance_items_g
predictor <- shelbyville_sediment$grain_size

# Fit the linear regression model
lm_model <- lm(grain_size ~ mp_abundance_items_g, data = shelbyville_sediment)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)

##########Q-Q Plot Sediment MP Abundance vs Sediment Grain Size##################

###Load the data
carlyle_sediment <- read.csv("data/carlyle_sed.csv")

####Defining the response and predictor variables
response <- carlyle_sediment$mp_abundance_items_g
predictor <- carlyle_sediment$grain_size

# Fit the linear regression model
lm_model <- lm(gwc ~ mp_abundance_items_g, data = carlyle_sediment)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)


######Comparing MP Abundance between environmental compartments##########

###Load in the data
carlyle_comparison <- read.csv("data/carlyle_compartment_comparison.csv")

####Defining the response and predictor variables
response <- carlyle_comparison$abundance_items_kg
predictor <- carlyle_comparison$abundance_items_l

# Fit the linear regression model
lm_model <- lm(abundance_items_l ~ abundance_items_kg, data = carlyle_comparison)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)


####Load in the data
shelbyville_comparison <- read.csv("data/shelbyville_compartment_comparison.csv")

####Defining the response and predictor variables
response <- carlyle_comparison$abundance_items_kg
predictor <- carlyle_comparison$abundance_items_l

# Fit the linear regression model
lm_model <- lm(abundance_items_l ~ abundance_items_kg, data = shelbyville_comparison)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)


#################Comparing MP Size Between Environmental Compartments##########


####Load in the data
shelbyville_size_comparison <- read.csv("data/shelbyville_size_compartment_comparison.csv")

####Defining the response and predictor variables
response <- shelbyville_size_comparison$water_size_mm
predictor <- shelbyville_size_comparison$sediment_size_mm

# Fit the linear regression model
lm_model <- lm(water_size_mm ~ sediment_size_mm, data = shelbyville_size_comparison)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)


####Load in the data
carlyle_size_comparison <- read.csv("data/carlyle_size_compartment_comparison.csv")


####Defining the response and predictor variables
response <- carlyle_size_comparison$water_size_mm
predictor <- carlyle_size_comparison$sediment_size_mm

# Fit the linear regression model
lm_model <- lm(water_size_mm ~ sediment_size_mm, data = carlyle_size_comparison)

# Set the layout to display all plots in a 2x2 grid
par(mfrow = c(2, 2))

# Plot the regression results
plot(lm_model)



##############Wilcoxon Tests#############################

#####Defining the groups being compared regarding microparticle size in Carlyle.
group1 <- carlyle_size_comparison$water_size_mm  
group2 <- carlyle_size_comparison$sediment_size_mm

# Combine into a dataframe
data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Water", "Sediment")))

# Run Wilcoxon test (Mann-Whitney U test)
wilcox.test(group1, group2)


######Defining the groups being compared regarding microparticle sizes in Shelbyville.
group1 <- shelbyville_size_comparison$water_size_mm  
group2 <- shelbyville_size_comparison$sediment_size_mm

# Combine into a dataframe
data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Water", "Sediment")))

# Run Wilcoxon test (Mann-Whitney U test)
wilcox.test(group1, group2)


######Defining the groups being compared regarding microparticle abundance in Shelbyville.
group1 <- shelbyville_comparison$abundance_items_l 
group2 <- shelbyville_comparison$abundance_items_kg

# Combine into a dataframe
data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Water", "Sediment")))

# Run Wilcoxon test (Mann-Whitney U test)
wilcox.test(group1, group2)


######Defining the groups being compared regarding microparticle abundance in Carlyle.
group1 <- carlyle_comparison$abundance_items_l 
group2 <- carlyle_comparison$abundance_items_kg

# Combine into a dataframe
data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Water", "Sediment")))

# Run Wilcoxon test (Mann-Whitney U test)
wilcox.test(group1, group2)


######Defining the groups being compared regarding microparticle abundance in Carlyle.
group1 <- carlyle_sediment$mp_abundance_items_g 
group2 <- carlyle_sediment$gwc

# Combine into a dataframe
data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Sediment Abundance", "GWC")))

# Run Wilcoxon test (Mann-Whitney U test)
wilcox.test(group1, group2)


######Defining the groups being compared regarding microparticle abundance in Shelbyville.
group1 <- shelbyville_sediment$mp_abundance_items_g 
group2 <- shelbyville_sediment$gwc

# Combine into a dataframe
data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Sediment Abundance", "GWC")))

# Run Wilcoxon test (Mann-Whitney U test)
wilcox.test(group1, group2)


######Defining the groups being compared regarding microparticle abundances in water between reservoirs.
group1 <- carlyle_comparison$abundance_items_l 
group2 <- shelbyville_comparison$abundance_items_l 

data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Car Water Abundance", "Shel Water Abundance")))

wilcox.test(group1, group2)

######Defining the groups being compared regarding microparticle abundances in sediment beds between reservoirs.
group1 <- carlyle_comparison$abundance_items_kg
group2 <- shelbyville_comparison$abundance_items_kg

data <- data.frame(
  values = c(group1, group2),
  group = rep(c("Car Sed Abundance", "Shel Sed Abundance")))

wilcox.test(group1, group2)



