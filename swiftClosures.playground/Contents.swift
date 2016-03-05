//: Playground - noun: a place where people can play

import UIKit

//闭包

//sort 方法

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella", "Bba"]
func backwards(s1: String, s2: String)->Bool {
    return s1 > s2
}

var revered = names.sort(backwards)

var arr = [1, 2,3,4,5,7]

//sorted(arr,{(a:Int,b:Int)->Bool in
//    return a> b
//})

var arr1 =  arr.sort({a,b in return a > b})
arr
var arr2 = arr.sort({(a:Int,b: Int)->Bool in
    return a > b
})

arr2
arr.sort(>)