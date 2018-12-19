#Establecer carpeta "Tarea_Desayuno" como directorio de trabajo.
setwd("~/Tarea_Desayuno")

#Tarea_Desayuno: Realizar un desayuno la ayuda de distintas acciones en R.

#Paso 1: Cortar elementos

1. Cortar("pan")
2. Cortar("palta")
3. Cortar("naranjas")

#Paso 2: Fase 1 preparacion

4. CalentarSarten()
5. Preparar("harina","huevos")
6. Calentar(Cortar("pan"))
7. Preparar(Preparar("harina","huevos"),CalentarSarten())
8. Moler(Cortar("palta"))
9. Calentar("cafe")

#Paso 3: Fase 2 preparacion

10. Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta")))
11. Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten()))
12. Preparar(Cortar("naranjas"))

#Paso 4: Servir el desayuno calentito

13. Servir(Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta"))), Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten())), Preparar(Cortar("naranjas")), Calentar("cafe"))
