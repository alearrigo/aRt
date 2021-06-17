library(tidyverse)

rose <- seq(-3,3,by=.01) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(1-x-sin(y^2)), y=(1+y-cos(x^2)))) +
  geom_point(alpha=.05, shape=20, size=0)+
  theme_void()+
  coord_polar()

ggsave(rose, filename="C://Users/aless/Desktop/rose.png", dpi=500, type = "cairo",width = 8)
