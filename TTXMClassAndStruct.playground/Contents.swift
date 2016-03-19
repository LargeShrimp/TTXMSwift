//: Playground - noun: a place where people can play

import UIKit

// **** 类和结构体 ****

//显示器的像素分辨率
struct Resolution {
    var width = 0
    var height = 0
}

//用来描述一个视频显示器的特定模式
class VedioModel {
    
    var resolution = Resolution()
    var frameRate =  false
    var name:String?
    
}

//实例

let someResolution = Resolution()
let someVedioModel = VedioModel()

//属性访问

let width =  someResolution.width

someVedioModel.resolution.width = 300
someVedioModel.name  = "VOC"

someVedioModel.name


var vocResolution = Resolution()
vocResolution.width = 200
vocResolution.height = 400

// or  (所有结构体都有一个自动生成的成员逐一构造器)
vocResolution = Resolution(width: 200, height: 400)
vocResolution.width

//结构体和枚举是值类型 （值类型被赋予给一个变量、常量或者被传递给一个函数的时候，其值会被拷贝。）
var otherReslution = vocResolution;
otherReslution.width = 600
vocResolution.width
otherReslution.width

//类是引用类型

var otherViewModel = someVedioModel

someVedioModel.name
otherViewModel.name = "Dell"
someVedioModel.name


//**** 恒等运算符 ****
// === !== （两个常量或者变量是否引用同一个类实例）

if otherViewModel === someVedioModel {
    
    print("引用的是同一个实例")
}else {
    print("不是同一个实例")
}

// 类和结构体的选择

//符合以下一个或者多个条件的请考虑 结构体
//1. 该数据结构只是为了封装少量相关的的简单的数据值
//2. 有理由预计该数据结构的实例在被赋值或传递时，封装的数据将会被拷贝而不是被引用
//3. 该数据结构中储存的值类型属性，也应该被拷贝，而不是被引用
//4. 该数据结构不需要去继承另一个既有类型的属性或者行为
