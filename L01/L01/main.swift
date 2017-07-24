//
//  main.swift
//  L01
//
//  Created by 张小铀 on 2017/5/17.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import Foundation


//var i = 20
//var str="hello"
//str=str + "world"
//str="\(str)learn\(i)"
//print(str)
////字典map
//var dict = ["name":"zhang","age":"10"]
//dict["sex"] = "male"
//print(dict)
//循环

//var arr = [String]()
//for index in 0...99{
//    arr.append("item \(index)")
//}
//print(arr)

//for index in 0...100{
//    if index%2==0{
//        print(index)
//    }
//}


////可选变量
//var myName:Bool?=false
//if let name=myName{
//    print("hello \(name)")
//}

//函数
//func sayHello(name:String){
//    print("hello \(name)")
//}
//
//sayHello(name: "zhang")
//
//func getNum()->(Int,Int){
//    return (2,3)
//}
//
//let (a,b) = getNum()
//print(a)
//
//var fun=sayHello
//fun("lisi")


//class Hi{
//    func sayHi(){
//        print("zhang")
//          }
//}

//var hi=Hi()
//hi.sayHi()

//class Hello:Hi{
//    var _name:String="wang"
//    init(name:String){//有参构造方法
//       self._name=name
//    }
//      override init(){//无参构造方法
//        
//    }
//    override func sayHi() {//方法重写
//        super.sayHi()//调用父类的方法
//        
//        print("hello \(_name)")
//    }
//    class func sayHi(){//类方法
//        print("hi swift")
//    }
//    
//}
//
//extension Hello{
//    func sayHa(){
//        print("haha")
//    }
//}
//
//    var h=Hello()
//    h.sayHi()//重写的方法实现
//    h.sayHa()//类的扩展方法实现
//Hello.sayHi()//类方法的实现
/*接口*/
//protocol People {
//  func getNum()->String
//}
//
//class Man:People{
//    func getNum() -> String {
//        return "zhang"
//    }
//}
//
//var m=Man()
//print("name is \(m.getNum())")

//var list = ["a","b","c","d"]
//list[1] = "x"
//print(list)

//var optionalString:String?="hello"
//print(optionalString==nil)
//var optionalName:String? = nil
//var greeting = "hello!"
//if let name=optionalName{
//    greeting="hello \(name)"
//}else{
//    greeting = "hi"
//}
//print(greeting)
//??操作符提供默认值,当可选值缺失时，使用默认值代替
//let nickname:String?=nil
//let fullname:String="peter"
//let informname="hi \(nickname ?? fullname)"
//print(informname)

//switch支持任意类型数据以及操作比较
//let vegetable = "red paper"
//switch vegetable{
//    case "celery":
//    print("add some logs")
//    case "cucumber","watercares":
//    print("that would")
//case let x where x.hasSuffix("paper"):
//    print("is it a spicy \(x)")
//default:
//    print("everything")
//    
//}
//for-in 遍历字典
//let interNumbers = [
//    "a":[2,3,4,5],
//    "b":[2,2,2,2],
//    "c":[3,4,5,3],
//]
//var largest = 0
//var exlarge = ""
//for (kinds,numbers) in interNumbers{
//    for number in numbers{
//        if number>largest{
//            largest=number
//            exlarge=kinds
//        }
//    }
//    
//}
//print(exlarge,largest)

//while 循环 循环语句在前在后两种情况
//var n=2
//while n<100{
//    n=n*2
//}
//print(n)
//
//var m=2
//repeat{
//    m=m*2
//}while m<100
//print(m)

//循环中用 ..< 或者 ...  表示范围
//..< 不包括上界 ... 包括上界
//var n = 2
//for i in 0..<4
//{
//    n += i
//}
//print(n)

//函数 闭包
//默认情况下，参数使用参数名称作为标签，也可以自定义标签如on 使用_ 表示不使用参数标签
//func greet(_ person:String,on day:String)->String{
//    return "hello \(person),today is \(day)"
//}
//var result = greet("z", on: "a")
//print(result)


//func calculate(scores:[Int])->(min:Int,max:Int,sum:Int){
//    var min = scores[5]//这里的数字代表数组的长度
//    var max = scores[5]
//    var sum = 0
//    
//    for index in scores{
//        if index > max {
//            max = index
//            
//        }else if index < min {
//            min = index
//        }
//        sum += index
//    }
//    return (min,max,sum)
//}
//let  result = calculate(scores: [100,11,33,44,22,66])
//
//print(result.sum)
//print(result.0)//这里的数字代表元组的下标，min->0,max->1,sum->2

//求和
//func sumOf(numbers:Int...)->Int{
//    var sum = 0
//    for num in numbers {
//        sum += num
//    }
// 
//    return sum
//}
//
//print(sumOf(numbers: 42,507,12))

//求平均差
//func averageOf(numbers:Int...)->Int{
//    var sum = 0
//    var count = 0
//    for num in numbers{
//        sum += num
//    }
//    if (numbers.count == 0) {
//        return 0
//    }else{
//        return sum/numbers.count
//    }
//}
//print(averageOf(numbers: 0))
//print(averageOf(numbers: 234,98,387))

//嵌套函数，类似Android递归函数
//func returnFifteen() ->Int{
//    var y = 10
//    func add(){
//    y += 10
//    }
//    add()
//    return y
//}
//print(returnFifteen())

//函数是第一等类型，意味着函数可以作为另一个函数的返回值
//func makeIncremeter() -> ((Int) -> Int){
//    func addOne(number:Int) -> Int {
//        return 1 + number
//    }
//    return addOne
//}
//var increment = makeIncremeter()
//print(increment(7))
//函数当做参数传入另一个参数
//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item){
//            return true
//        }
//    }
//    return false
//}
//
//func lessThanTen(number: Int) -> Bool {
//    return number < 10
//}
//var numbers = [20,19,11,12]
//print(hasAnyMatches(list: numbers, condition: lessThanTen))

//func demo(name:String?,age:Int?){
//
//guard let name = name , let age = age else{
//    print("nil")
//    return
//}
//print(name + String(age))
//}
//
//demo(name: "laowang", age: 18)

//var str = "helloworldr"
//print(str.lengthOfBytes(using: .utf8))
//print(str.characters.count)

//let h = 9
//let m = 8
//let s = 7
//var str = String(format: "%02d:%02d:%02d", h,m,s)
//print(str)


func demo() {
    let str = "我们一起吧"


guard let range = str.range(of: "一起") else {
    print("nothing")
    return
}
    print(range)
    print(str.substring(with: range))
}


























