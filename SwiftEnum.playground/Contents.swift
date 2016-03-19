//: Playground - noun: a place where people can play

import UIKit

//****枚举****

enum Derection{
    case e
    case w
    case n
    case s
}


var derection = Derection.e
derection = .w

var nourse:Derection = .n

//****使用 Switch 语句匹配枚举值****

let somePlanet = Derection.e

switch somePlanet {
    
case .e:
    print("eee")
    print("I'm here !")
case .w:
    print("www")
case .s:
    print("sss")
default:
    print("nnnn")

}


//****关联值****
enum Barcode {
    case UPCA(Int, Int ,Int, Int)
    case QRCode(String)
}
var productBarcode = Barcode.UPCA(12, 13, 14, 15)
productBarcode = .QRCode("ABC")
switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}

//****原始值****
enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}


//原始值和关联值是不同的。原始值是在定义枚举时被预先填充的值，像上述三个 ASCII 码。对于一个特定的枚举成员，它的原始值始终不变。关联值是创建一个基于枚举成员的常量或变量时才设置的值，枚举成员的关联值可以变化。


//****原始值的隐式赋值******
enum Plane: Int {
    case Mercury = 1, Venus, Earth
}
//**** rawValue 访问原始值 ****
print("\(Plane.Mercury.rawValue)")
print("\(Plane.Venus.rawValue)")


let possiablePlane = Plane(rawValue: 7)
possiablePlane


let somePoint = 9

if let somePlane = Plane(rawValue: somePoint) {
    
    switch(somePlane) {
    case .Venus:
        print("aaaaa")
    default:
        print("bbbb")
    }
}else {
    
    print("ccc")
}


let some = Plane(rawValue: somePoint)
if (some != nil) {
    
    print("ddd")
}else {
    print("eee")
}


//**** 递归枚举 ****
//昝略



