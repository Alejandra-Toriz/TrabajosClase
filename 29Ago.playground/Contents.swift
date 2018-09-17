//: Playground - noun: a place where people can play

//Propiedades calculadas

//Setters:
//Getters: solo se optiene el valor

import UIKit

struct Empleado{
    var nombre: String
    var sueldo: Double{ //da los valores automaticamente  uando el valor cambia
        willSet{ //se pondra el valor
            print("El sueldo nuevo es: \(newValue)")
        }
        didSet{ //ya se puso el valor
            print("El sueldo anterior era: \(oldValue)")
        }
    }
    var impuestos: Double{
        return sueldo * 9.78 //getter
    }
    
    init(nombre: String, sueldo: Double){
        self.nombre = nombre
        self.sueldo = sueldo
    }
    //polimorfismo
    //funciones descriptivas y que contengan el contexto
    func trabaja(){
        print("Godin trabajando")
    }
    
    func trabaja(en donde: String){
        print("Godin trabajando en: \(donde)")
    }
  
    func trabaja(para patron: String){
        print("Godin trabaja para: \(patron)")
    }
}

var godin = Empleado(nombre: "Juan", sueldo: 89.3)
godin.impuestos
godin.sueldo = 700
godin.trabaja(en: "la casa") //etiquetas / variables  diferentes
godin.trabaja()
godin.trabaja(para: "las chicas superpoderosas")


