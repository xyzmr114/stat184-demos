library(ggplot2)
library(scales)

ggplot(airports_long, aes(x = Year, y = Passengers_Millions,
                          color = Airport, group = Airport)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3.5) +
  geom_text(aes(label = paste0(Passengers_Millions, "M")),
            vjust = -1, size = 3, show.legend = FALSE) +
  scale_x_continuous(breaks = 2020:2024) +
  scale_y_continuous(limits = c(0, 120),
                     labels = label_number(suffix = "M")) +
  scale_color_brewer(palette = "Set2") +
  labs(
    title = "Passenger Traffic at Six Major Airports (2020-2024)",
    subtitle = "All six airports cratered in 2020 — but recovery speed varied dramatically",
    x = "Year",
    y = "Total Passengers (Millions)",
    color = "Airport"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    plot.subtitle = element_text(color = "gray40"),
    panel.grid.minor = element_blank(),
    legend.position = "right"
  )