library(tidyverse)
library(tokenizers)

print("Caso Práctico en R ")
print("------------------------------------------------------------------------------")
print(" 1) La cadena de texto separada por espacios donde cada espacio sea una coma: ")
print(" 2) La cadena de texto dada la vuelta:                                        ")
print(" 3) El número de veces que aparezca cada letra:                               ")
print("------------------------------------------------------------------------------")

funcion <- function() 
  {
  Respuesta <- readline("Elija una opción por favor:  ")
 

  if (substr(Respuesta, 1, 1) == "1"){
    
    palabra=readline(promp="Ingrese una o más palabras con coma: ")
      cat("La respuesta sin comas es: ")
    print(str_split(palabra, ","))
    }
  
  if (substr(Respuesta, 1, 1) == "2"){
    
    Texto=readline("Ingresa el texto por favor: ")
    cat("La respuesta dada vuelta es: ")
    revstring=function(s)
      print(paste(rev(strsplit(s,"")[[1]]),collapse=""))
    revstring(Texto)
    }
  
  if (substr(Respuesta, 1, 1) == "3"){

    texto=readline(promp="Ingrese una o mas palabras: ")
    palabras <- tokenize_characters(texto)
    tabla <- table(palabras[[1]])
    tabla <- data_frame(palabra = names(tabla), recuento = as.numeric(tabla))
    print(tabla)
  }
  else{
  cat("Muchas gracias")}
}
if(interactive()) funcion()
