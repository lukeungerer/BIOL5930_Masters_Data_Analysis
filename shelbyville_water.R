shelbyville_water <- read.csv("data/shelbyville_wat.csv")


library(librarian)
librarian::shelf(tidyverse,lterdatasampler, ggplot2, cowplot)

####Display data in the console
str(shelbyville_water)

#####Creating a linear regression figure and adding stats

# Fit a linear model
model <- lm(mp_abundance_items_l ~ turbidity, data = shelbyville_water)

# Extract R² and p-value
summary_model <- summary(model)
r_squared <- summary_model$r.squared
p_value <- summary_model$coefficients[2, 4]  # p-value for turbidity


ggplot(data = shelbyville_water, aes(x = turbidity, y = mp_abundance_items_l)) +
  geom_point(pch = 21, size = 2, fill = "black", color = "black") +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(x = "Turbidity (NTU)", y = "Microplastic Abundance (items/L)") +
  annotate("text", x = max(shelbyville_water$turbidity) * 0.8, 
           y = max(shelbyville_water$mp_abundance_items_l) * 0.9,
           label = paste("R² =", round(r_squared, 3), "\n p =", round(p_value, 3)),
           size = 5, hjust = 0) +
  theme_classic()


