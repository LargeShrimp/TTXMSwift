//: Playground - noun: a place where people can play

import UIKit

// **** Properties ****

//存储属性
//一个存储属性就是存储在特定类或结构体的实例里的一个常量或变量
struct FixedLengthRange {
    var firstValue : Int  //变量
    let length: Int       //常量
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6


//延迟存储属性
// 第一次调用的才会计算其初始值

struct DateImporter {
    var fileName  = "data.txt"
}


class DateManager {
    
    lazy var importer  = DateImporter()
    var data = [String]()
}


let dateManager = DateManager()

dateManager.data.append("some date")
dateManager.data.append("some date, some date")

//这个时候importer 还没创建
print("\(dateManager.importer.fileName)")

//计算属性
//除存储属性外，类、结构体和枚举可以定义计算属性。计算属性不直接存储值，而是提供一个 getter 和一个可选的 setter，来间接获取和设置其他属性或变量的值。
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center : Point {
        
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
//        setter 没有定义表示新值的参数名，则可以使用默认名称newValue
//        set(newCenter) {
//            origin.x  = newCenter.x - size.width / 2;
//            origin.y = newCenter.y - size.height / 2;
//        }
        
        set {
            
            origin.x  = newValue.x - size.width / 2;
            origin.y = newValue.y - size.height / 2;
        }
    }
}


var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))

let initalSquareCenter = square.center


square.center  = Point(x: 15, y: 15);

print("\(square.origin.x) ,\(square.origin.y) ,\(square.center.x),\(square.center.y)")


//只读计算属性
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
//        只读计算属性的声明可以去掉get关键字和花括号：
        get {
            return width * height * depth
        }
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)

//因为没有setter 方法，所以是只读属性
fourByFiveByTwo.volume

//**** 属性观察器 ****
//属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察器，甚至新值和当前值相同的时候也不例外。

class StepCounter {
    
    var totalSteps: Int = 0 {
        
        //新值
        willSet{
            print("Abount to set totals to \(newValue)")
        }
        //旧值
        didSet (old){
            if totalSteps > old {
                print("Added \(totalSteps - old)")
            }

        }
    }
}


let stepCounter  = StepCounter()
stepCounter.totalSteps = 100
stepCounter.totalSteps = 120

//全局变量和局部变量
//全局的常量或变量都是延迟计算，都属于存储型变量
//局部范围的常量或变量从不延迟计算


//类型属性 (不是很懂)

//实例属性属于一个特定类型的实例，每创建一个实例，实例都拥有属于自己的一套属性值，实例之间的属性相互独立。
//
//也可以为类型本身定义属性，无论创建了多少个该类型的实例，这些属性都只有唯一一份。这种属性就是类型属性。
//
//类型属性用于定义某个类型所有实例共享的数据，比如所有实例都能用的一个常量（就像 C 语言中的静态常量），或者所有实例都能访问的一个变量（就像 C 语言中的静态变量）。
//
//存储型类型属性可以是变量或常量，计算型类型属性跟实例的计算型属性一样只能定义成变量属性。


//类型属性与法
struct SomeStructure {
    static var stroredTypeProperty = "some value"
    static var computTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedType = "some value."
    static var computTypeProperty: Int {
        return 6
    }
}

class SomeClass {
    static var storedTypeProperty = "some value"
    static var computedTypeProperty : Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}

//获取和设置类型属性的值
print(SomeStructure.stroredTypeProperty)
SomeStructure.stroredTypeProperty = "other value"
print(SomeEnumeration.storedType)
print(SomeClass.computedTypeProperty)

struct AudioChannel {
    static let threSholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    
    var currentLevel: Int = 0 {
        
        didSet {
            if currentLevel > AudioChannel.threSholdLevel {
                currentLevel = AudioChannel.threSholdLevel
            }
            
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}


var leftChannel = AudioChannel()
var rightChanner = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)

leftChannel.currentLevel = 20
leftChannel.currentLevel


