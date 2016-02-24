//: Playground - noun: a place where people can play

import UIKit

//字符串常量 <自动类型推断>

let someString = "Hello, world!"

//初始化空字符串

var anotherString = ""  //空字符串字面量
var otherString = String()   //初始化方法


//是否为空
if anotherString.isEmpty {
    //todo...
}


//字符串拼接

var string1 = "Hello"
var string2 = ", world"
var newString3 = string1 + string2

let newcharacter: Character = "!"
newString3.append(newcharacter)


//字符串索引
//使用endIndex属性可以获取最后一个Character的后一个位置的索引。因此，endIndex属性不能作为一个字符串的有效下标
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.endIndex.predecessor()]
greeting[greeting.startIndex.advancedBy(4)]

//插入删除
//调用insert(_:atIndex:)方法可以在一个字符串的指定索引插入一个字符。
var welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)
//welcome.insertContentsOf(<#T##newElements: CollectionType##CollectionType#>, at: <#T##Index#>)
welcome.removeAtIndex(welcome.endIndex.predecessor())

//字符串比较

//前缀后缀比较

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var actCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        ++actCount
    }
}





