# DEMO 1

library(tidyverse)
library(datos)

# que me falta? los datos
ggplot()

#que me falta? el geom. lo elijo
ggplot(data = millas) 

# ¿Que me falta? el mapeo
ggplot(data = millas) +
  geom_point()

# entender el error 
# "Error: geom_point requires the following missing aesthetics: x, y"

# Ahora esta bien?
ggplot(data = millas, x = motor, y = autopista) +
  geom_point()

# entender el error
#"Error in layer(data = data, mapping = mapping, stat = stat, geom = GeomPoint,  : 
                 #object 'motor' not found"

# ¿Que tengo que poner a dentro del aes()?
ggplot(data = millas, aes(x = motor, y = autopista)) +
  geom_point()


ggplot(data = millas, aes(x = motor, y = autopista)) +
  geom_point()


# que pasa si modifico el geom por linea?

ggplot(data = millas, aes(x = motor, y = autopista)) +
  geom_line()

# veo un grafico de lineas horrible

library(gapminder)

gapminder %>% 
  filter(continent == Asia)

# ¿Que paso? porque no funciona??? las comillas

data <- gapminder %>% 
  filter(continent == "Asia")


ggplot(data = data, aes(x = year, y = lifeExp))+
  geom_line()


ggplot(data = data, aes(x = year, y = lifeExp, group = country))+
  geom_line()
  