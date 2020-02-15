# demo 3

# se acuerdan de este grafico
library(gapminder)

gapminder %>% 
  filter(country %in% c("Argentina","Brazil","Chile"))%>% 
  ggplot(aes(x = year, y = pop, color = country)) +
  geom_line(size = 1.5)

# le agrego puntos

gapminder %>% 
  filter(country %in% c("Argentina","Brazil","Chile"))%>% 
  ggplot(aes(x = year, y = pop, color = country)) +
  geom_line(size = 1.5)+
  geom_point()

# no se ve nada

gapminder %>% 
  filter(country %in% c("Argentina","Brazil","Chile"))%>% 
  ggplot(aes(x = year, y = pop, color = country)) +
  geom_line(size = 1.5)+
  geom_point(size = 1.5, color = "black")


# ahora los agrando y cambio el orden de las capas

# no se ve nada

# que pasa si invierto el orden de las capas?
gapminder %>% 
  filter(country %in% c("Argentina","Brazil","Chile"))%>% 
  ggplot(aes(x = year, y = pop, color = country)) +
  geom_point(size = 5.5, color = "black") +
  geom_line(size = 1.5)

# a que les recuerda esto las capas?


