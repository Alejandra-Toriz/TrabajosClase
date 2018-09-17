//: Playground - noun: a place where people can play

import UIKit

//Formas de compatracion

/*
 ! no
 != diferente no es igual
 == igualdad
 <, > = iguales que en todos lados
 */

"fer" > "alejandra" //buscar hombres de 32 años
// esto sucede porque se evalua en unicode y hace jerarquia con el alfabeto, igual con emojis
//sin distinguir entre mayusculas y minuscolas
"sandra" > "german"
"sandra" > "sandro" // la o tiene màs peso que la a

if 3 > 2{
    print("3 es mayor que dos")
}else{
    print("2 es mayor que tres")
}

var i = 0
while i < 10{
    print(i)
    i += 1  // sigue siendo importante poner condicion de fin
}

//cambia la sintaxis del for

for i in 1...10{ //1 hasta 10, 1..<10 hasta 9
    print(i)
}

for _ in 1..<10{ // no me regreses valor sòlamente itera, si no quieres almacenar un valor
    print("Hola mundo :)")
}

//tambien puedes iterar en cadenas :)

//FUNCIONES:

//variable x y su tipo: parametros
func nombreFuncion(param: Int) -> Int{ // -> tipo de parametro a regresar,
    print("pepe pica papas con un pico \(param)")
    return 10
}
//el nombre del parametro debe de coincidir
nombreFuncion(param:10)
 //se pueden meter n parametros, pero no es recomendable meter tantos

func multiplica(_ a: Int, por b: Int) -> Int{
    //unders code para NO mostrar el nombre del parametro al llamar la funcion
    // por es una etiqueta al parametro b
    return a * b
}

multiplica(10, por: 20)

//Factorial de un numero:

func factorial(n: Int) -> Int{
    var a = n // se crea una variable porque el parametro se crea automaticamente como cte (let)
    if( a == 0){
        return 1
    }
    else{
        for i in 1...(a - 1){
            a = a * i
        }
        return a}
}

print(factorial(n: 6))

