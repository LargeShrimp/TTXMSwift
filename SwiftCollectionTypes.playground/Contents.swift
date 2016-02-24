//: Playground - noun: a place where people can play

import UIKit

//swift 提供给了Arrays、Sets和Dictionaries 三种基本的集合类型用来存储集合数据。Arrays 是有序数据的集合，Sets是无序无重复的数据的集，dictionaries 是无序的键值对的数据集

//Arrays

//空数据

var someInts = [Int]()

someInts.append(2)
someInts
someInts = []  //至空
someInts

//创建带有默认值的数据

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
threeDoubles

//数组相加
var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles

//字面量构建数组
var shoppinglist:[String] = ["eggs", "Milk"]

//访问数组
if shoppinglist.isEmpty {
    
    print("The shoppinglist is empty")
}else {
    print("is not empty")
}

shoppinglist.append("Friut")
shoppinglist += ["vaking"]

var firstItem = shoppinglist[0]
//修改数组
shoppinglist[1] = "dog"
//移除最后一个
shoppinglist.removeLast()


//集合Sets
var letters = Set<Character>()
letters.insert("a")
letters.insert("b")
letters = []   //至空

//字面量创建集合
var favoriteFruit: Set<String> = ["Rock", "Hip hop"]
var favoriteFruits: Set = ["Rock", "Hip hop"]
favoriteFruits.count
favoriteFruits.isEmpty
favoriteFruits.insert("Dog")
//favoriteFruits.removeAll()
//favoriteFruits.removeFirst()
favoriteFruits.remove("Dog")
favoriteFruits
favoriteFruits.contains("Hip")

//遍历
for aa in favoriteFruits {
    print("\(aa)")
}


for bb in favoriteFruits {
    print("\(bb)")
}

//集合操作

//你可以高效地完成Set的一些基本操作，比如把两个集合组合到一起，判断两个集合共有元素，或者判断两个集合是否全包含，部分包含或者不相交。

//使用 intersect(_:)  方法根据两个集合中都包含的值创建的一个新的集合。
//使用 exclusiveOr(_:)方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
//使用 union(_:)      方法根据两个集合的值创建一个新的集合。
//使用 subtract(_:)   方法根据不在该集合中的值创建一个新的集合。

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersect(evenDigits).sort()
// []
oddDigits.subtract(singleDigitPrimeNumbers).sort()
// [1, 9]
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()
// [1, 2, 9]



//字典

//空字典
var nameOfInteg = [Int: String]()
//赋值
nameOfInteg[16] = "sixteen"
nameOfInteg = [:]

var airports: [String: String] = ["XYZ": "Tornto Perason", "DUB": "Dublin"]
airports.count
airports.isEmpty

airports["LHR"] = "London"
airports["LHR"] = "China"
airports.updateValue("xiaoxiao", forKey: "LHR")
airports.removeValueForKey("LHR")
airports

//遍历
for (airport, airportName) in airports {
    
    print("\(airport)==== \(airportName)")
}

