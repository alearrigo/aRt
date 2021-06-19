library(tidyverse)

silk <- seq(from=-10, to=10, by = 0.04) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(x+pi*sin(y)), y=(y+pi*sin(x)))) +
  geom_point(alpha=.1, shape=20, size=0) + 
  theme_void()

ggsave(silk, filename="C://Users/aless/Desktop/silk.png", dpi=500, type = "cairo",width = 8)


square <- seq(from=-10, to=10, by = 0.04) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(x+pi*cos(x)), y=(y+pi*sin(y)))) +
  geom_point(alpha=.1, shape=20, size=0) + 
  theme_void()

ggsave(square, filename="C://Users/aless/Desktop/square.png", dpi=500, type = "cairo",width = 8)

square2 <- seq(from=-10, to=10, by = 0.04) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(x^2*cos(x)), y=(y+pi*sin(x)))) +
  geom_point(alpha=.1, shape=20, size=0) + 
  theme_void()

ggsave(square2, filename="C://Users/aless/Desktop/square2.png", dpi=500, type = "cairo",width = 8)


silk2 <- seq(from=-3, to=3, by = 0.01) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(1-x-sin(y^2)), y=(1+y-cos(x^2)))) +
  geom_point(alpha=.1, shape=20, size=0) + 
  theme_void()

ggsave(silk2, filename="C://Users/aless/Desktop/silk2.png", dpi=500, type = "cairo",width = 8)


aa <- seq(from=-3, to=3, by = 0.01) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(1-x-sin(y^2)), y=(1+y-cos(x^2)))) +
  geom_line(alpha=.1) +
  theme_void()

ggsave(aa, filename="C://Users/aless/Desktop/aa.png", dpi=500, type = "cairo",width = 8)


rose <- seq(-3,3,by=.01) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(1-x-sin(y^2)), y=(1+y-cos(x^2)))) +
  geom_point(alpha=.05, shape=20, size=0)+
  theme_void()+
  coord_polar()

ggsave(rose, filename="C://Users/aless/Desktop/rose.png", dpi=500, type = "cairo",width = 8)

