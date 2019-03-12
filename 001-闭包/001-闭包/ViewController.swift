//
//  ViewController.swift
//  001-闭包
//
//  Created by 张小铀 on 2017/7/23.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

//        '尾'随闭包
//        如果函数的最后一个参数是闭包,函数参数可以提前结束,最后一个参数直接使用 {} 包装闭包的代码
//        loaddata { (result) in
//            print(result)
//        }
        
//        原本函数形式
        loaddata(completion: { (result)->() in
            print(result)
        })
    }
//completion:@escaping (_ result:[String])->()
  
    /**
     在异步执行任务,获取结果,通过闭包回调
     */
    func loaddata(completion:@escaping (_ result:[String])->()) -> () {
        //        将任务添加到队列,制定执行任务的函数
        //        翻译:'队列'调度任务(block/闭包),以同步/异步 的方式执行
        DispatchQueue.global().async {
            print("global\(Thread.current)")
            Thread.sleep(forTimeInterval: 1.0)
            let json = ["高铁","汽车","火车","飞机"]
            
//            主线程回调
            DispatchQueue.main.async(execute: {
                print("main\(Thread.current)")
//                回调->执行 闭包(通过参数传递)
//                传递异步获取的结果
                completion(json)
            })
        }
    }

}

