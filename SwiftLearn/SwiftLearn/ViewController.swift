//
//  ViewController.swift
//  SwiftLearn
//
//  Created by 张小铀 on 2017/7/7.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let b = { (x:Int)-> Int in
//           return x + 200
//        }
//       print( b(100))
        loaddata { (result) in
            print("新闻\(result)")
        }
    }

    func demo() {
        let str = "我们一起吧"
        
        
        guard let range = str.range(of: "一起") else {
            print("nothing")
            return
        }
        print(range)
        print(str.substring(with: range))
    }
    
    func demo01() {
        let array = ["zhang","li","ha"]
        for (n,s) in array.enumerated().reversed() {
            print("\(n) \(s)")
        
        }
    }
    
    func demo02(){
    var airports = ["YYZ":"Toronto Pearson","DUB":"Dublin"]
//        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
//            print("The old value for DUB was \(oldValue)")
//        }
//        if let airportName = airports["DUB"]{
//        print("The name of the airport is \(airportName)")
//        }else {
//        print("no airport")
//        }
//        airports["APL"]="changsha"
//        airports["APL"]=nil
//        print(airports)
        for airportCode in airports.keys{
            print("airport code \(airportCode)")
        }
    }
    
    func demo3(x:Int , y:Int) -> Int {
        return x + y
    }
    
    //    GCD ： 将任务添加到队列，指定执行任务的函数
    func loaddata(completion: @escaping (_ result:[String])->()) -> () {
        //       ‘队列’调度任务（block／闭包），以同步／异步的方式执行
        DispatchQueue.global().async {
            print("耗时操作\(Thread.current)")
            Thread.sleep(forTimeInterval: 1.0)
            let json = ["chwei","qiche","paoche"]
        
            //        主队列回调
            DispatchQueue.main.async {
//                print("主队列\(Thread.current)")
                completion(json)
            }
        }
    }
    
    


}

