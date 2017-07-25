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
//        loaddata { (result) in
//            print(result)
//        }
        loaddata { (result) in
            print(result)
        }
    }
//completion:@escaping (_ result:[String])->()
  
    func loaddata(completion:@escaping (_ result:[String])->()) -> () {
        DispatchQueue.global().async {
            print("global\(Thread.current)")
            Thread.sleep(forTimeInterval: 1.0)
            let json = ["高铁","汽车","火车","飞机"]
            DispatchQueue.main.async(execute: { 
                print("main\(Thread.current)")
                completion(json)
            })
        }
    }

}

