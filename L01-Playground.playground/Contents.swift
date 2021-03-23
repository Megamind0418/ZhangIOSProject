//: Playground - noun: a place where people can play

import UIKit
//字符串
//var a = "abc"
//a.caseInsensitiveCompare("asbc").rawValue
//a.distance(from: a.startIndex, to: a.endIndex)
//a.insert("!", at: a.startIndex)
//a.insert(contentsOf: "hi", at: a.index(before: a.endIndex))
////查找指定区域内的内容进行替换
//var b = "i have 3 apples and you have 5 apples too"
//let startindex = b.index(b.startIndex,offsetBy:9)
//let endindex = b.index(b.endIndex,offsetBy:-4)
//let range = startindex..<endindex
//print(b[range])
//b.replaceSubrange(range, with: "stars")
//b.replacingOccurrences(of: "apples", with: "stars")
////b.removeSubrange(range)
////移除指定区域内的内容
//var title = "Interactive tutorials for Xcode and Swift!"
//let startIndexofTietle = title.index(title.startIndex,offsetBy:6)
//let endIndexofTitle = title.index(title.startIndex,offsetBy:16)
//let rangeoftitle = startIndexofTietle..<endIndexofTitle
//print(title[rangeoftitle])
//title.removeSubrange(rangeoftitle)
////元组
//let http500code = (500,"internet server error")
//let(errcode,errmsg) = http500code
//errcode
//errmsg
//http500code.0
//基本数据类型
//let oneThousand:UInt16 = 1000
//let _oneThousand:UInt16 = 1_000
//let age = "16"
//let ageint = Int(age)
//let agestring = String(describing: ageint)
//let agestring2 = ageint!.description
//let agestring3 = "i am \(ageint) years"
//数组
//var stringarray = Array<String>()
//var floatarray = [Float]()
//var numarray1 = [1,2,3]
//var numarray2 = [1,2,3,4,5]
////定义二维数组
//var newarray = Array<Array<Int>>()
//newarray.append(numarray1)
//newarray.append(numarray2)
//for subarray in newarray{
//    for num in subarray{
//        print(num)
//    }
//}
//switch
//
//let time=20
//var msg = ""
//switch time {
//case 8,12,18:
//    msg="eating"
//case 7:
//    msg="get up"
//case let x where x>18 && x<=24:
//    msg="happy time"
//case 1...6:
//    msg="sleep"
//default:
//    msg="relax"
//}

//var sum = 0
//for i in 1...4{
//    if i==2
//    {
////        continue 继续下一次 for 循环
//        continue
//    }
//
//    sum += i
//}
//
//let time = 6
//var msg = "x"
//switch time {
//case 2,4,6,8:
//    msg = "xxx"
//    fallthrough
//default:
//    msg = "xyyy"
//}
////输入输出参数
//func swap(a:Double,b:Double){
//    let temp = a
//    a = b
//    b = temp
//}
//
//var num1 = 1
//var num2 = 2
//swap(&num1, &num2)
//num1
//num2

//func printswift(){
//    print("hello")
//}
//
//let another:()->() = printswift
//another()

//递归函数
//func recursion(n:Int)->Int
//{
//    if n<=1
//    {
//        return 1
//    }else{
//        return recursion(n:n-1)+recursion(n:n-2)
//    }
//}
//
//recursion(n:5)
//枚举
//enum Language:Int
//{
//    case swift = 1
//    case oc
//    case unknown
//}
//
//Language.oc.rawValue
//Language.unknown.rawValue
//类
//class Person
//{
//    var name : String
//    var age : Int
//
//    init(personName:String,age:Int) {
//        self.name = personName
//        self.age = age
//    }
//
//}
//
//let person = Person(personName: "zhang", age: 20)
//
//let person2 = person
//person2.name = "jerry"
//print(person.name)
//print(person2.name)
//person === person2

//willset didset
//class Player
//{
//    var name : String = "sam"
//    var level : Int = 1
//    var score : Double = 0.0
//    {
//        willSet
//        {
//                if level == 3
//                {
//                    print("a")
//                }
//                else
//                {
//                    print("b")
//                }
//        }
//        didSet
//        {
//            print("c")
//        }
//    }
//}
//
//var player:Player = Player()
//player.score
//player.score = 12

//延迟属性lazy
//class Animal
//{
//    var name : String = "zhang"
//    var age : Int = 20
//}
//
//class Person
//{
//    var name = "x"
//    var age = 15
//    lazy var pet = Animal()
//
//}
//
//var person = Person()
//print(person.pet.name)

//继承
// class Animal
//{
//    var age:String
//    init(age:String) {
//        self.age = age
//    }
//
//    convenience init(){
//        self.init(age: "18")
//    }
//    func say() {
//        print("animal")
//    }
//}
//
//class Dog:Animal
//{
//    var name:String
//
//    init(age:String,name:String) {
//        self.name = name
//        super.init(age: age)
//    }
//
//    override convenience init(name:String){
//        self.init( age: "20",name: name)
//    }
//    override func say() {
//        super.say()
//        print("dog")
//    }
//}
////
//var dog = Dog(
//dog.say()
//扩展
//struct XYPoint
//{
//    var x = 0.0
//    var y = 0.0
//
//
//}
//
//extension XYPoint
//{
//    func distance(point:XYPoint) -> Double {
//        let disX = point.x - self.x
//        let disY = point.y - self.y
//        return sqrt(disX*disX+disY*disY)
//    }
//}
//
//let startPoint = XYPoint(x: 0, y: 0)
//let endPoint = XYPoint(x: 100, y: 100)
//startPoint.distance(point: endPoint)

//协议
//protocol Walking {
//    func walk()
//}
//protocol Fighting:Walking {
//    var damage:Int{get set}
//    func fight()
//}
//protocol Eating {
//    func eat()
//}
//
//class Animal:Fighting,Eating
//{
//    var damage = 10
//
//    func fight() {
//        print("fight")
//    }
//
//    func eat() {
//        print("eat")
//    }
//
//    func walk() {
//        print("walk")
//    }
//}
//
//extension Animal
//{
//    var weight:Double
//    {
//        get{return 15.0}
//    }
//
//    func getWeight()->Double
//    {
//        return 45.9
//    }
//
//}
//
//var animal = Animal()
//animal.damage
//animal.eat()
//animal.fight()
//animal.walk()
//animal.getWeight()
//animal.weight
//问号？和感叹号！
//var psw:String? = "12"
//print(psw?.count ?? 0)

//class Pet
//{
//    var age:String?
//}
//
//class Person
//{
//    var name:String?
//    var pet:Pet?
//}
//
//let person = Person()
//person.pet
//person.pet?.age
//person.pet = Pet()
//person.pet
//person.pet?.age = "a"
//person.pet?.age

//继承及构造器继承
//class Food {
//
//    var name: String
//    init(name: String) {
//     self.name = name
//
//    }
//    convenience init() {
//
//        self.init(name: "[Unnamed]") }
//
//}
//
//class RecipeIngredient: Food {
//
//    var quantity: Int
//    init(name: String, quantity: Int)
//    {
//        self.quantity = quantity
//        super.init(name: name)
//    }
//
//    override convenience init(name: String)
//    {
//        self.init(name: name, quantity: 1)
//    }
//
//}
//let oneMysteryItem = RecipeIngredient()
//let oneBacon = RecipeIngredient(name: "Bacon")
//let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
//
//class ShoppingListItem: RecipeIngredient
//{
//    var purchased = false
//    var description: String
//    { var output = "\(quantity) x \(name)"
//        output += purchased ? " 真" : " 假"
//        return output
//    }
//}
//
//var breakfastList = [ShoppingListItem(),
//                     ShoppingListItem(name: "Bacon"),
//                     ShoppingListItem(name: "Eggs", quantity: 6)
//]
//breakfastList[0].name = "Orange juice"
//breakfastList[0].purchased = true
//for item in breakfastList {
//
//    print(item.description)
//
//}

//析构器
//class Bank {
//
//    static var coinsInBank = 10_000
//    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
//
//        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
//
//        coinsInBank -= numberOfCoinsToVend
//        coinsInBank
//        return numberOfCoinsToVend }
//    static func receive(coins: Int) {
//
//        coinsInBank += coins
//        coinsInBank
//    }
//
//}
//
//class Player {
//
//    var coinsInPurse: Int
//    init(coins: Int) {
//
//        coinsInPurse = Bank.distribute(coins: coins) }
//    func win(coins: Int) {
//
//        coinsInPurse += Bank.distribute(coins: coins) }
//    deinit {
//
//        Bank.receive(coins: coinsInPurse) }
//
//}
//
//var playerone:Player? = Player(coins: 100)
//print("A new player has joined the game with \(playerone!.coinsInPurse) coins")
//print("There are now \(Bank.coinsInBank) coins left in the bank")
//playerone?.win(coins: 2000)
//playerone = nil


//class Person{
//    var name:String?
//    var phone:String?
//    var title:String?
//}
//
//var arrayM = [Person()]
//
//let p = Person()
//p.name = "zhang"
//p.phone = "123"
//p.title = "boss"
//arrayM.append(p)
//arrayM.count

//let b = {
//    (x) in print(x)
//}
//b(100)

//
//var userlogin = false
//
//userlogin ? 1 : 2

