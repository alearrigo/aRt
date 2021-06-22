library(tidyverse)
jellyfish <- seq(from=-10, to=10, by = 0.05) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(x^2+pi*cos(y)^2), y=(y+pi*sin(x)))) +
  geom_point(alpha=.05, shape=20, size=0)+
  theme_void()+coord_fixed()

ggsave(jellyfish, filename="C://Users/aless/Desktop/jellyfish.png", dpi=500, type = "cairo",width = 8)
