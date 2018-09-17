//: Playground - noun: a place where people can play

import UIKit

// nulo  *     ausencia de valor, reservar en memoria dinamica
// p = (char *)malloc(sizeof(char));

var nombre: String? = "Luis"//ignoro si tienes i no valor ? = * en C
//* soporto direcc s/* ya no soporto nulos
//? puede o no tener valor, s/? no soporto nulos ? ya soporto nulos

print(nombre!) //garantizo que hay un valor, e igualo nombre a nil, me contradigo y fatal error

//Opciones para trabajar con nulos

// 1_OPTIONAL BINDING
if let name = nombre { //if solo existe en la condicion, no puedo trabajar con ella
    print("Hay un valor en nombre y es \(name)")
}
else {
    print("Pues no hay valor joven")
}

// 2_GUARD: FUNCIONES QUE NECESITEN VALORAR PARAMETROS ANTES DE SER USADOS

//una vez se termina if name desaparece de la variables y no existe
//print(name)

func evaluaParams ( param: String?){ //valido sòlo existe en la funciòn
    guard let valido = param else{
        print("No hay valores")
        return // no brake porque me saca completamente
    }
    print(valido)
}

evaluaParams(param: nombre)

// 3_OPTIONAL CUALECENTE

//crea una variable de tipo string, asignale un nombre si es que lo tiene o di si no lo tiene
var nombreCompleto: String = nombre ?? "no tiene nombre :("
print(nombreCompleto)



