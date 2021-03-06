#Establecer carpeta "Tarea_Desayuno" como directorio de trabajo.
setwd("~/Tarea_Desayuno")

#Tarea_Desayuno: Crear un desayuno con la ayuda de distintas acciones en R

#Cortar: strig -> string
#def Cortar: si x es ("pan") el resultado ser� ("pan cortado")
#si x es ("naranajas") el resultado ser� ("naranjas cortadas")
#si x es ("palta") el resultado ser� ("palta cortada")
#si es otra cosa el resultado ser� ("No s� qu� hacer con",x)
#Ejemplo: Cortar("naranjas")->("naranjas cortadas")

Cortar <- function(x){
  if(x=="pan"){
    return("pan cortado")
  }else if(x=="naranjas"){
    return("naranjas cortadas")
  }else if(x=="palta"){
    return("palta cortada")
  }else{
    return(paste("No sé que hacer con ",x))
  }
}

#Moler: string -> string
#def Moler: si x es ("palta cortada") el resultado ser� ("palta molida")
#si es otra cosa el resultado ser� ("No s� qu� hacer con ",x)
#Ejemplo: Moler("palta cortada")->("palta molida")

Moler <- function(x){
  if(x=="palta cortada"){
    return("palta molida")
  }else{
    return(paste("No sé que hacer con ",x))
  }
}

#CalentarSarten: string -> string
#def CalentarSarten: resultado ("sart�n caliente")
#Ejemplo: CalentarSarten()->("sart�n caliente")

CalentarSarten <- function(){
  return("sartén caliente")
}

#Preparar: string string -> string
#def Preparar: si x es "naranjas cortadas" el resultado ser� "jugo de naranjas"
#si (x,y) es ("masa de panqueques","sart�n caliente") 
#� es ("sart�n caliente","masa de panqueques") el resultado ser� ("panqueques")
#si (x,y) es ("harina","huevos") � ("huevos","harina")
#el resultado ser� ("masa de panqueques")
#si (x,y) es ("pan tostado","palta molida") o ("palta molida","pan tostado") 
#el resultado ser� ("pan tostado con palta")
#si es otra cosa el resultado ser� ("faltan elementos")
#Ejemplo: Preparar("harina","huevos")->("masa de panqueques")

Preparar <- function(x,y){
  if(x=="naranjas cortadas"){
    return("jugo de naranjas")
  }else if((x=="masa de panqueques" && y=="sartén caliente")||(y=="masa de panqueques" && x=="sartén caliente")){
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
#y si x es otra cosa el resultado ser� "No s� qu� hacer con x"
#Ejemplo: Calentar("cafe")->"cafe caliente"

Calentar <- function(x){
  if(x=="cafe"){
    return("cafe caliente")
  }else if(x=="pan cortado"){
    return("pan tostado")
  }else{
    return(paste("No sé que hacer con ",x))
  }
}

#Rellenar: string -> string
#def Rellenar: si x es ("panqueques") el resultado ser� ("panqueques con manjar")
#si es otra cosa el resultado ser� ("no s� qu� hacer con ",x)
#Ejemplo: Rellenar("panqueques")->("panqueques rellenos con manjar")

Rellenar <- function(x){
  if(x=="panqueques"){
    return("panqueques con manjar")
  }else{
    return(paste("No sé que hacer con ",x)) 
  }
}

#Servir: string string string string -> string
#def Servir: si (x,y,z,j) son ("pan tostado con palta","panqueques con manjar"
#"jugo de naranja","caf� caliente") 
#el resultado ser� ("mmmmm... niami... el desayuno est� maravilloso")
#sino el resultado ser� ("iiiuuuu... esto no est� listo")
#Ejemplo: Servir("pan tostado con palta","panqueques con manjar","jugo de naranja", "caf� caliente")->("mmmmm... niami... el desayuno está maravilloso")

Servir <- function(x,y,z,j){
  if((x=="pan tostado con palta" && y=="panqueques con manjar" && z=="jugo de naranjas" && j=="cafe caliente")){
    return("mmmmm... niami... el desayuno está maravilloso")
  }else{
    return("iiiuuuu... esto no está listo")
  }
}

#Desayunito: string string -> string
#def Desayunito: convierto materias primas en un desayuno completo
#con la ayuda de las siguientes funciones

Cortar("pan")
Cortar("palta")
CalentarSarten()
Preparar("harina","huevos")
Calentar("pan cortado")
Preparar("masa de panqueques","sartén caliente")
Moler("palta cortada")
Preparar("pan tostado","palta molida")
Rellenar("panqueques")
Cortar("naranjas")
Preparar("naranjas cortadas")
Calentar("cafe")
Servir("pan tostado con palta","panqueques con manjar","jugo de naranjas","cafe caliente")
