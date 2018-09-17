//: [Previous](@previous)
// flie - playground page - es como un libro
import Foundation

var str = "Hello, playground"

var integer : Int = 3
var decimal : Double = 15.4
/* lo que se digo no se puede hacer esto
integer = decimal*/
//casteo
integer = Int(decimal) //combierte el valor no la variable, decimal = Double:integer = decimal * 3 esto no
//formas en que puedo declarar un dato especificando un tipo de dato, para evitar la inferiencia
let wantDouble = 3.0 //aqui se usa el tipo de dato desde el inicio
type(of: wantDouble)

let actuallyDouble = Double(3) //convierto el dato antes de la inferencia
type(of: actuallyDouble)

let strictDouble : Double = 3 //forma correcta
type(of: strictDouble)

let otherDouble = 3 as Double // asignalo pero como ...
type(of: otherDouble)

//para copiar y pegar command en vez de crtl

//Cadenas

var cadena : Character = "a" //comillas cadena
type(of: cadena)
//usar la forma sòlo cuando que se desea analizar cosas caracter por caracter

var message = "Hola " + " mundo " // concatenar con +
var name = "Toriz"

message += name

let exclamationMark : Character = "!"
message += String(exclamationMark)

//interpolacion de cadenas: juntar en una cadena valores de otros posibles datos
message = "Hola mundo me llamo\(name)"

var age = 19

message = "Yo soy \(name) y tengo \(age)"

let oneThird = 1.0 / 3.0
let oneThirdLongString = "Un tercio es: \(oneThird) como decimal"

//multilinea; acepta acentos
let multiLine = """
Esta es una multilinea
y sólo aceptaré dos lineas
adios
"""
print(multiLine)

//Tuplas: conjunto de datos inmutable, enumera automaticament, numeros grises

let coordinates : (Int, Int) = (3, 4)
coordinates.1

//para perfeccionistas

let coordinatesName : (x: Int, y: Int ) = (1,2)
coordinatesName.x

let coordinates3D = (x:2, y:3, z:4)

let (x3, y3, z3) = coordinates3D
print(z3)

//TIP: las funciones regresan tuplas !!!
//TIP 2
//_ ignora  guion bajo underscode no gasta memoria 
let (x4, y4, _ ) = coordinates3D


//: [Next](@next)
