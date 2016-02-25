//: Playground - noun: a place where people can play

import UIKit

//functions

//又返回值
func sayHello(personName: String) ->String {
    
    let gretting = "Hello " + personName + " !"
    
    return gretting
}

sayHello("Peter")


//无返回值 (void 其实返回一个空的元组（）)
func sayGoodBye(personName: String) {
    print("bye bye ! -> \(personName)")
}

sayGoodBye("boy")


//多重返回值的函数

func minMax(array:[Int]) ->(min:Int, max: Int)? {
    
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0];
    
    for value in array {
        
        if value < currentMin {
            
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax([3, 2, 400, -1])
print("min is \(bounds!.min), max is \(bounds!.max)")
//传入一个空数组
minMax([])


//指定外部参数名 ，默认值

func sayHi(to persion: String = "dog", from anotherPerson: String) -> String {
    
    return anotherPerson + " say hi to " + persion
}

sayHi(to: "dog", from: "pig")
sayHi(from: "pig")


//可变参数 (一个函数最多只能有一个可变参数)

func totalNum(numbers: Double...)->Double {
    
    var total: Double = 0
    for value in numbers {
        total += value
    }
    return total
}

let total = totalNum(1, 2, 3, 4, 5)

//常量参数和变量参数
func alignRight(var temp: String, length: Int, pad: Character)->String {
    
    let amound2Pad = length - temp.characters.count
    if amound2Pad < 1 {
        return temp
    }
    
    let padString = String(pad)
    for _ in 1...amound2Pad {
        temp = padString + temp
    }
    return temp
}

let newAlignRight = alignRight("hello", length: 10, pad: "_")

//输入输出参数 inout (一般参数是不能被修改的)

func swap2Ints(inout a:Int, inout _ b: Int) {
    let temp = a
    a = b
    b = temp
}

var oneInt = 2
var twoInt = 4
swap2Ints(&oneInt, &twoInt)
oneInt
twoInt

//函数类型 function type
// (Int, Int) -> Int
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

//“定义一个叫做 mathFunction 的变量，类型是‘一个有两个 Int 型的参数并返回一个 Int 型的值的函数’，并让这个新变量指向 addTwoInts 函数”。
var mathFunction:(Int, Int)->Int = addTwoInts
mathFunction(2, 3)

//函数类型作为参数类型

func printMathResult(mathFunction:(Int, Int)->Int, a: Int,  b: Int) {
    print("result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, a: 3, b: 5)


//函数类型作为返回类型

func stepForward(input: Int)-> Int {
       return input + 1
}

func steopBackward(input: Int)->Int {
    return input - 1
}

func chooseStepFuction(backwards: Bool) -> ((Int) -> Int) {
    
    return backwards ?  steopBackward : stepForward
}

var currentValue = 3

let move2Zero = chooseStepFuction(currentValue > 0)

while currentValue != 0 {
    currentValue = move2Zero(currentValue)
}


//嵌套函数

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    
    func stepForward(input: Int) -> Int { return input + 1 }
    
    func stepBackward(input: Int) -> Int { return input - 1 }
    
    return backwards ? stepBackward : stepForward
}