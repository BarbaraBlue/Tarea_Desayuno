#Establecer carpeta "Tarea_Desayuno" como directorio de trabajo.
setwd("~/Tarea_Desayuno")

#Tarea_Desayuno: Crear un desayuno con la ayuda de distintas acciones en R:
Cortar - Moler -  CalentarSarten - Preparar - Calentar - Rellenar - Servir 

#Paso 1: Cortar elementos

Cortar("pan") 
Cortar("palta") 
Cortar("naranjas")

#Paso 2: Fase 1 preparacion

CalentarSarten()
Preparar("harina","huevos")
Calentar(Cortar("pan"))
Preparar(Preparar("harina","huevos"),CalentarSarten())
Moler(Cortar("palta"))
Calentar("cafe")

#Paso 3: Fase 2 preparacion

Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta")))
Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten()))
Preparar(Cortar("naranjas"))

#Paso 4: Servir el desayuno calentito

Servir(Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta"))), Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten())), Preparar(Cortar("naranjas")), Calentar("cafe"))
