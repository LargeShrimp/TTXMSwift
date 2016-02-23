//: Playground - noun: a place where people can play

import UIKit

//  swift基础部分

//  变量和常量
var str = "Hello, playground"
let maxLoginAttempCount = 300_00
str
maxLoginAttempCount

var x = 0.0, y = 0.1, z = 0.2

//类型标注
var userName: String = "Dianda"
var maxCount: Int = 2
var red, green, blue: Double

//输出常量和变量
print(str)
print(maxLoginAttempCount)


//类型转换
var f1: Int16 = 100
var f2: UInt16 = 1
var fand = f1 + Int16(f2)
let integpi = Int(3.14)
let pi = Double(3) + 0.11415

//类型别名

typealias newtypeInt = Int16
var newtypeIntMinValue: newtypeInt = newtypeInt.min

//布尔值

let orangsAreOrangs: Bool = true
let turnipsAreDelicious = false

if orangsAreOrangs {
    print("orangsAreOrangs is true")
}else {
    print("orangsAreOrangs is false")
}

//元组 tuples

let http404Error = (404, "Not found")
let (httpStatus,httpInfo) = http404Error
print(httpStatus)
print(http404Error.1)

let http200Success = (http200Status: 200, http200Info: "ok")
print(http200Success.http200Status)

//可选类型 optionals
//暗示任意值得缺失


var serway: String?   //serway 被解析成nil
//使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制解析值之前，一定要确定可选包含一个非nil的值。
serway = "Hello, world!"
//print("serway value = \(serway!)")

if serway != nil {
    print("serway value = \(serway!)")
}

// optionals binding

//if let constantName = someOptional {
//    statements
//}

if let tempValue = serway {
    print("serway value = \(tempValue)")
}

var optionValue:String = "123a"

if let actualValue = Int(optionValue) {
    print("\(optionValue) has an integ value of \(actualValue)")
    
}else {
    print("\(optionValue) con`t not converted to an integ value")
}

//隐式解析可选类型
//对比
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要惊叹号来获取值

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // 不需要感叹号


//错误处理

//断言
var age = 1
assert(age >= 0, "no")

//注意：
//当代码使用优化编译的时候，断言将会被禁用，例如在 Xcode 中，使用默认的 target Release 配置选项来 build 时，断言会被禁用。



