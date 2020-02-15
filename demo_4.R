
# escribo el grafico paso a paso
ggplot(diamantes) + 
  geom_bar(aes(x = color, fill = corte)) +
  facet_wrap(~corte)


# le cambio la escala de color

ggplot(diamantes) + 
  geom_bar(aes(x = color, fill = corte)) +
  facet_wrap(~corte)+
  scale_fill_brewer()

# no es muy buena, la hago cualitativa

ggplot(diamantes) + 
  geom_bar(aes(x = color, fill = corte)) +
  facet_wrap(~corte)+
  scale_fill_brewer(palette = "Set1")


# cambio la cantidad de columnas

ggplot(diamantes) + 
  geom_bar(aes(x = color, fill = corte)) +
  facet_wrap(~corte, ncol = 1)

ggplot(diamantes) + 
  geom_bar(aes(x = color, fill = corte)) +
  facet_wrap(~corte, nrow = 3)


# que pasa si cambio a grid
ggplot(diamantes) + 
  geom_bar(aes(x = color, fill = corte)) +
  facet_grid(~corte, nrow = 3)

# tengo que remover nrow - me da todo en una fila
# que pasa si le agrego una segunda variable

ggplot(diamantes) + 
  geom_bar(aes(x = color, fill = corte)) +
  facet_grid(claridad~corte)

# que pasa si elijo otra variable

diamantes %>% 
  slice(1:200) %>%  
  ggplot()+ 
  geom_bar(aes(x = color, fill = corte)) +
  facet_grid(corte~precio)

# es una variable contiunua!


