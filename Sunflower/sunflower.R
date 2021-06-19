library(ggplot2)
n=500
sunflower <- ggplot(data.frame(r=sqrt(1:n),t=(1:n)*pi*(3-sqrt(5))),
       aes(x=r*cos(t),y=r*sin(t)))+
  geom_point(aes(size=n-r, alpha=n-r),
             shape=19,colour="green")+
  coord_equal()+cowplot::theme_nothing()

ggsave(sunflower, filename="C://Users/aless/Desktop/sunflower.png", dpi=500, type = "cairo",width = 7.09)
