//: Playground - noun: a place where people can play

import UIKit

//运算符  一元 二元 三元

//一元运算符对单一操作对象操作（如-a）。一元运算符分前置运算符和后置运算符，前置运算符需紧跟在操作对象之前（如!b），后置运算符需紧跟在操作对象之后（如i++）。
//二元运算符操作两个操作对象（如2 + 3），是中置的，因为它们出现在两个操作对象之间。
//三元运算符操作三个操作对象，和 C 语言一样，Swift 只有一个三元运算符，就是三目运算符（a ? b : c）。


// 赋值运算符 （a = b ）
let b = 10
var a = 5
a = b
a

//算术运算符 （+=-*）
1 + 2   //3
5 - 3   //2
2 * 3   //6
10.0 / 2.5 //4.0


"hello, " + "woorld"   // + 还用于字符串拼接

//求余元算符 a % b 

9 % 4   // 1
-9 % 4  //-1
8 % 2.5 // 0.5

//自增自减

//var ac =  ++1
a
//组合赋值运算符

var a1 = 1
a1 += 2 // a 现在是 3


//比较运算符
//等于（a == b）
//不等于（a != b）
//大于（a > b）
//小于（a < b）
//大于等于（a >= b）
//小于等于（a <= b）

//注意： Swift 也提供恒等===和不恒等!==这两个比较符来判断两个对象是否引用同一个对象实例。更多细节在

//三木运算符

let contentHeight = 30
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 10: 0)

//空运算符 a ?? b
//表达式a必须是Optional类型
//默认值b的类型必须要和a存储值的类型保持一致

//简短表示为 a != nil ? a! : b


let defaultColorName = "red"
var userDefinedColorName: String?

//userDefinedColorName = "green"
var colorName2Use = userDefinedColorName ?? defaultColorName

//区间运算符
//闭区间    a...b
//半开区间   a..<b (不包括b的区间)


let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count

for i in 0..<count {
    print("第\(i+1)个人叫\(names[i])")
}


//逻辑运算符

//逻辑非（！a）
//逻辑与（a && b）
//逻辑或 （a || b）










