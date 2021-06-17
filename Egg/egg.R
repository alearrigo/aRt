library(tidyverse)

egg <- seq(-3,3,by=.01) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(x^3-sin(y^2)), y=(y^3-cos(x^2)))) +
  geom_point(alpha=.1, shape=20, size=0, color="white")+
  theme_void()+
  coord_fixed()+
  theme(panel.background = element_rect(fill="black"))+
  coord_polar()

ggsave(egg, filename="C://Users/aless/Desktop/egg.png", dpi=500, type = "cairo",width = 8)
