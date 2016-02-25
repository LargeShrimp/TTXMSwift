//: Playground - noun: a place where people can play

import UIKit


// for in
for idx in 1...1000 {
    print(idx)
}


let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
answer

//for 

//for initialization; condition; increment {
//    statements
//}

for var idx = 0; idx < 3; ++idx {
    print("idx is \(idx)")
}


//while 循环
let isFull: Bool =  false
while isFull {
    print("ss")
}

//repeat-while (先执行一次)

//repeat {
//    statements
//}while condition

var tempa = 1
repeat {
    tempa++
} while tempa < 10

//条件语句

// if 

var temperature = 35

if temperature > 32 {
    print("today is hot")
}

//switch
//每一个 case 分支都必须包含至少一条语句。像下面这样书写代码是无效的，因为第一个 case 分支是空的：
let sameCharacter = "e"

switch sameCharacter {
    case "a" ,"e", "c", "d":
        print("\(sameCharacter) is here")
    case "v", "z","w","r","t","h","k","y":
    print("dont find e")
    default:
    print("dont find e")
}


//区间匹配

let approximateCount = 62
let contedThings = "moons orbiting Saturn"

var naturalCount: String

switch approximateCount {
    
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
default:
    naturalCount = "many"
}

//元组 （tuple）
//我们可以使用元组在同一个switch语句中测试多个值。元组中的元素可以是值，也可以是区间。另外，使用下划线（_）来匹配所有可能的值。

let somepoint = (1, 0)
switch somepoint {
case (0, 0):
    print("(0, 0) is at the origin")
case(_, 0):
    print("\(somepoint.0, 0) is one the x-axis")
case(0, _):
    print("(0, \(somepoint)) is on the y-axis")
case(-2...2, -2...2):
    print("(\(somepoint.0),\(somepoint.1) is inside the box)")
default:
    print("\(somepoint.0),\(somepoint.1) is out of the box")
}

//值绑定

let anotherPoint = (0, 1)

switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case(0, let y):
    print("on the y-axis with an value of \(y)")
case let(x, y):
    print("somewhere else at (\(x), \(y))")
}


//Where
//case 分支的模式可以使用where语句来判断额外的条件。

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
    
case let(x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let(x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//控制转移语句
//continue  停止本次循环
//break     结束本循环（跳出整个循环体）
//return
//throw
//fallthrough

let puzzleInput: String = "great minds think alike"
var pullOutput = ""

for character in puzzleInput.characters {
    
    switch character {
        case "a", "e", "i", "o", "u", " ":
        continue
    default:
        pullOutput.append(character)
    }
}
pullOutput


//break
let numberSymbol: Character = "三"
var possibleIntegValue: Int?
switch numberSymbol {
    case "1", "一":
    possibleIntegValue = 1
case "2", "二":
    possibleIntegValue = 2
case "3", "三":
    possibleIntegValue = 3
case "4", "四":
    possibleIntegValue = 4
case "5", "五":
    possibleIntegValue = 5
default:
    break
}

if let integvalue = possibleIntegValue {
    print("The integ value of \(numberSymbol) is \(integvalue)")
}else {
    print("An integ balue could not be found for \(numberSymbol)")
}

//贯穿 (类似于oc case中不写break)
let integer2Describe = 5
var description = "The number \(integer2Describe) is "

switch integer2Describe {
    
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += "a prime number, and also fallthrough "
    fallthrough
default:
    description += "an integer."
}
print(description)

var tempb = 0
gameloop: repeat {
    
    if tempb % 2 == 0 {

        tempb++
        continue gameloop
    }
} while tempb < 10

tempa

