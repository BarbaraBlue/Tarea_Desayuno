#Establecer carpeta "Tarea_Desayuno" como directorio de trabajo.
setwd("~/Tarea_Desayuno")

#Cortar: string -> string
#def Cortar: si x es ("pan") el resultado será ("pan cortado")
#si x es ("naranjas") el resultado será ("naranjas cortadas")
#si x es ("palta") el resultado será ("palta cortada")
#si es otra cosa el resultado será ("No sé qué hacer con",x)
#Ejemplo: Cortar("naranjas")->("naranjas cortadas")

Cortar <- function(x){
  if(x=="pan"){
    return("pan cortado")
  }else if(x=="naranjas"){
    return("naranjas cortadas")
  }else if(x=="palta"){
    return("palta cortada")
  }else{
    return(paste("No sÃ© que hacer con ",x))
  }
}

#Moler: string -> string
#def Moler: si x es ("palta cortada") el resultado será ("palta molida")
#si es otra cosa el resultado será ("No sé qué hacer con ",x)
#Ejemplo: Moler("palta cortada")->("palta molida")

Moler <- function(x){
  if(x=="palta cortada"){
    return("palta molida")
  }else{
    return(paste("No sÃ© que hacer con ",x))
  }
}

#CalentarSarten: string -> string
#def CalentarSarten: resultado ("sartén caliente")
#Ejemplo: CalentarSarten()->("sartén caliente")

CalentarSarten <- function(){
  return("sartÃ©n caliente")
}

#Preparar: string string -> string
#def Preparar: si x es "naranjas cortadas" el resultado será "jugo de naranjas"
#si (x,y) es ("masa de panqueques","sartén caliente") 
#ó es ("sartén caliente","masa de panqueques") el resultado será ("panqueques")
#si (x,y) es ("harina","huevos") ó ("huevos","harina")
#el resultado será ("masa de panqueques")
#si (x,y) es ("pan tostado","palta molida") o ("palta molida","pan tostado") 
#el resultado será ("pan tostado con palta")
#si es otra cosa el resultado será ("faltan elementos")
#Ejemplo: Preparar("harina","huevos")->("masa de panqueques")

Preparar <- function(x,y){
  if(x=="naranjas cortadas"){
    return("jugo de naranjas")
  }else if((x=="masa de panqueques" && y=="sartÃ©n caliente")||(y=="masa de panqueques" && x=="sartÃ©n caliente")){
    return("panqueques")
  }else if((x=="harina" && y=="huevos")||(y=="harina" && x=="huevos")){
    return("masa de panqueques")
  }else if((x=="pan tostado" && y=="palta molida")||(y=="pan tostado" && x=="palta molida")){
    return("pan tostado con palta")
  }else{
    return("faltan elementos")  
  }
}

#Calentar: string -> string
#def Calentar: si x es "cafe" el resultado es "cafe caliente"
#si x es "pan cortado" el resultado es "pan tostado"
#y si x es otra cosa el resultado será "No sé qué hacer con x"
#Ejemplo: Calentar("cafe")->"cafe caliente"

Calentar <- function(x){
  if(x=="cafe"){
    return("cafe caliente")
  }else if(x=="pan cortado"){
    return("pan tostado")
  }else{
    return(paste("No sÃ© que hacer con ",x))
  }
}

#Rellenar: string -> string
#def Rellenar: si x es ("panqueques") el resultado será ("panqueques con manjar")
#si es otra cosa el resultado será ("no sé qué hacer con ",x)
#Ejemplo: Rellenar("panqueques")->("panqueques rellenos con manjar")

Rellenar <- function(x){
  if(x=="panqueques"){
    return("panqueques con manjar")
  }else{
    return(paste("No sÃ© que hacer con ",x)) 
  }
}

#Servir: string string string string -> string
#def Servir: si (x,y,z,j) son ("pan tostado con palta","panqueques con manjar","jugo de naranja","café caliente") 
#el resultado será ("mmmmm... niami... el desayuno está maravilloso")
#sino el resultado será ("iiiuuuu... esto no está listo")
#Ejemplo: Servir("pan tostado con palta","panqueques con manjar","jugo de naranja", "café caliente")->("mmmmm... niami... el desayuno estÃ¡ maravilloso")

Servir <- function(x,y,z,j){
  if((x=="pan tostado con palta" && y=="panqueques con manjar" && z=="jugo de naranjas" && j=="cafe caliente")){
    return("mmmmm... niami... el desayuno estÃ¡ maravilloso")
  }else{
    return("iiiuuuu... esto no estÃ¡ listo")
  }
}

#Tarea_Desayuno: string string -> string
#def Tarea_Desayuno: convierto materias primas en un desayuno completo
#con la ayuda de las funciones mencionadas


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

