## Donut chart
```{r}
size <- 1.5
df_pie %>% 
	mutate(x = 1.5) %>% 
	ggplot(aes(x = x, y = deaths, fill = locality)) +
	geom_col() +
	coord_polar(theta = 'y', start = 0) +
	scale_fill_manual(values = c(urban_color, rural_color), label = c("Urban", "Rural")) +
	geom_text(aes(label = percent(deaths/sum(deaths, na.rm = T))),
						color = "white", size = 8, position = position_stack(vjust = 0.5)) +
	gssthemes() +
	theme(axis.text = element_blank(),
				axis.ticks.y = element_blank(),
				axis.text.y= element_blank(),
				panel.grid.major.y = element_blank(),
				axis.text.x = element_blank(),
				panel.grid = element_blank())  +
	labs(x = NULL, y = NULL, fill = "Locality tyepe") +
	xlim(c(0.2, size+0.5))
