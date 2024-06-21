#####
# Setup Script

# Use this script to load common packages, write functions used throughout
# your site, or create themes for plots. Source this file, as needed, near the
# top of .qmd files with a code chunk including `source('path_to_file/setup.R')`

#####
# Common packages

library(tidyverse)
library(showtext)
library(reticulate)
library(plotly)
library(htmltools)

#####
# Plot themes

# Define custom colors
point_color <- '#9B0000'
grid_color <- 'white'
background_color <- '#F7F7F7'
text_color <- '#333333'

# Load custom fonts from Google Fonts
font_add_google("Red Hat Text")
font_add_google("Red Hat Display")
showtext_auto()

# Create a custom theme for ggplot objects
scatter_theme <- theme(
  text = element_text(family = "Red Hat Text", color = text_color),
  plot.title = element_text(family = 'Red Hat Display', face = 'bold', color = text_color),
  panel.grid = element_line(color = grid_color),
  panel.background = element_rect(fill = background_color),
  legend.background = element_rect(fill = background_color),
  plot.background = element_rect(fill = background_color, color = background_color)
)

# Create a custom theme for plotly objects (without custom fonts)
scatter_theme_plotly <- theme(
  panel.grid = element_line(color = grid_color),
  panel.background = element_rect(fill = background_color),
  legend.background = element_rect(fill = background_color),
  plot.background = element_rect(fill = background_color, color = background_color)
)
