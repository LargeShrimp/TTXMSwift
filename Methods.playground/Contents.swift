//: Playground - noun: a place where people can play

import UIKit

// Methods 

//实例方法

class Counter {
    var count = 0;
    func inCrement() {
        ++count
    }
    
    func inCrementBy(amount: Int) {
        count += amount
        }
    
    func reset() {
        count = 0;
    }
}

let counter = Counter()

counter.inCrement()
counter.count
counter.inCrementBy(20)
counter.count
counter.reset()
counter.count

//self 属性

//在实例类型方法中修改值类型

struct Point {
    var x = 0.0, y = 0.0
  mutating  func moveBy(deltaX: Double ,y deltalY:Double) {
        x += deltaX
        y += deltalY
    }
}



var newPoint = Point(x: 10.0, y: 10.0)
newPoint.moveBy(2, y: 2)
newPoint.x
newPoint.y


//在可变方法中给self 赋值
struct Points {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        self = Points(x: x + deltaX, y: y + deltaY)
    }
}



var somePoints = Points(x: 2, y: 2)

somePoints
somePoints.moveByX(10, y: 10)

somePoints.x
somePoints.y



enum TriStateSwitch {
    case Off, Low, High
    
    mutating func next() {
        switch self {
            
        case .Off:
            self  = Low
        case .Low:
            self = High
        case .High:
            self = Off
        }
    }
}

var ovenLight = TriStateSwitch.Low
ovenLight.next()
ovenLight.next()

// 类型方法（类方法）Type Methods
//class SomeClass {
//    static func someTypeMethod() {
//        // type method implementation goes here
//    }
//}

//SomeClass.someTypeMethod()

//监测玩家已解锁的最高等级
struct LevelTracker {
    
    //**** 除了等级1都没锁定 ****
    static var highestUnlockedLevel = 1
    
    //设置等级
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    
    //检测是够解锁
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        }else {
            return false
        }
    }
    
}

class Player {
    
    //用户名
    let playerName: String
    //追踪当前用户等级
    var tracker = LevelTracker()

    //解锁
    func completedLevel(level: Int) {
        //最高没解锁的
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    
    init(name: String) {
        playerName = name
    }
}


var player = Player(name: "xiaoMing")

//完成了第2关
player.completedLevel(2)

print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")

if player.tracker.advanceToLevel(2) {
    print("player now is  on the level 2")
}else {
    print("level 2 has not yet been inlocked)")
}



