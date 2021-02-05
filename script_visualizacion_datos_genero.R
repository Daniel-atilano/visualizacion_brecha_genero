remotes::install_github(repo = 'AprendR/DatosPerspectivaGenero',subdir = 'curso.feminismo.datos')

library(curso.feminismo.datos)
library(dplyr)

print(brecha_data)

?curso.feminismo.datos
____________________________________________________________
filter() ##filtra los renglones con base en valores

select() ##selecciona columnas por nombre o posiciòn

mutate() ##agrega nuevas variables

arrage() ##ordena el dataset con base en un factor

summarise() ##calcula calculos agrupados

##dplyr_verb(data.frame,parametros)


_________________________________________________________________

select(situacion_laboral_madre, Año, Estudiante)

filter(situacion_laboral_madre, Año == "2013*")

mutate(nacimiento_lugar_residencia, año_entero = as.integer(Año, 1,4)))

situacion_laboral_madre %>%
  filter(Año == "2013") %>%
  mutate(año_entero= as.integer(substr(Año, 1,4))) %>%
  select(año_entero, Estudiante, Otra)

