//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Alumno{
    //propiedades: lo definen/ caracteristicas
    var numCuenta: String
    var nombre: String
    var edad: Int
    
    //metodos: qué hace / comportamiento
    func estudiar(){
        print("Alumno estudiando...")
    }
    
    func leer(){
        print("Alumno leyendo...")
    }
    
    //crear un inicializador
    init(numCuenta: String, nombre: String, edad: Int){
        self.nombre = nombre
        self.numCuenta = numCuenta
        self.edad = edad
    }
    //puedo tener n onicializadorea
    init(edad: Int){
        self.nombre = "nobody"
        self.edad = edad
        self.numCuenta = "0000000000"
    }
    
    //los valores dentro de la structura  o se pueden modificar porque esta usados como valor, solo usando mutating
    mutating func midificaEdad(){
        self.edad = self.edad + 1
    }
}

//Instancia de la estructura
//Muy importante inicializar la instancia.
var Emma = Alumno(numCuenta: "315017199", nombre: "Emmanuel", edad: 19)
Emma.edad = 18 //por buenas practricas esto no es correcto, porque cualquiera pude cambiar su información
print(Emma)

var alex = Emma
Emma.edad = 23
dump(alex)

//Struict es un tipo de dato por valor, class es por refertencia: se usa cuando no deseo copias y quiero cambiar mi instancia cambie a lo largi del programa, ademas cuando quiero que exista la herencia, referencia es como usar memoria dinamica

//En swift no hay herencia multiple, sòlo unica, para la multiple se crean protocolos

//En struct no hay herencia porque no esta implementado por referencia

//En MPOO las propiedades sólo deben ser accecibles atraves de los metodos
