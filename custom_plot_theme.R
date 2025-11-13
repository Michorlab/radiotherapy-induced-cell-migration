

library(ggplot2)
library(cowplot)
library(gridExtra)

custom_plot_theme <-
  theme_set(theme_bw(base_size = 16) +
              theme(panel.grid.major = element_blank(),
                    panel.grid.minor = element_blank(),
                    axis.ticks.length = unit(-0.25, 'cm'),
                    axis.text.x = element_text(margin = unit(c(0.5, 0.5, 0.5, 0.5), 'cm'), size = 16),
                    axis.text.y = element_text(margin = unit(c(0.5, 0.5, 0.5, 0.5), 'cm'), size = 16),
                    plot.title = element_text(hjust = 0.5, size = 16),
#                    legend.title = element_blank(),
                    legend.title = element_text(color = "black", size = 16),
                    legend.position = 'top',
                    legend.text = element_text(size = 16)))