//: Playground - noun: a place where people can play

import UIKit


//闭包表达式
//{ (parameters) -> returnType in
//    statements
//}
var arr:[Int] = [1,2,3,4,5,0]

//从小到大
var arr1 =  arr.sort()

arr.sort(>)
arr.sort()
var add = "asd"

//如果返回true 就
func compare2Ints(a:Int,b:Int) ->Bool {
    
    return a > b
}

//传入一个函数
arr.sort(compare2Ints)

//传入一个闭包 （只调用一次的函数我们可以写成闭包）
var  temparr  = arr.sort({(a:Int,b:Int)->Bool in
    return a > b
})

//推断数据类型
arr.sort({a,b in a > b})
temparr

var strArr = ["d", "cd", "bcd", "abcd", "abc"]

var arr3 = strArr.sort({(a:String, b:String) -> Bool in
    if a.characters.count != b.characters.count {
       return  a.characters.count < b.characters.count
    }
    return a < b
})

arr3


//结尾闭包
strArr.sort(){(a:String, b:String) -> Bool in
    if a.characters.count != b.characters.count {
        return  a.characters.count < b.characters.count
    }
    return a < b
}


//数值捕获
var intArr = [1,2,3,4,5,6,7,8,9,10]

var num = 3
intArr.sort(){ (a:Int , b: Int)->Bool in
    return fabs(Float(a-num)) < fabs(Float(b-num))
}
intArr.sort(){ (a:Int , b: Int)->Bool in
    return fabs(Float(a-num)) > fabs(Float(b-num))
}

//值类型和引用类型

func try2ChangeValue(var x:Int) { x++ }

var a = 2
try2ChangeValue(a)
a

var b = a
b
++b
a
// int Float Double Bool Touple String Array Dictionary 值类型
//函数和闭包是引用类型

func calcTotalMiles (m:Int)-> ()->Int {
    var totalMoles = 0
    return { totalMoles += m; return totalMoles; }
}


var daily2Moles = calcTotalMiles(20)
daily2Moles()
daily2Moles()
daily2Moles()

var myPlan = daily2Moles
myPlan()
daily2Moles()