//
//  ViewController.swift
//  004-使用session加载百度
//
//  Created by 张小铀 on 2017/7/30.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://www.baidu.com")
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
//            if(error != nil ){
//                print("net work fail")
//                return
//            }
            guard let data = data else {
                print("net work fail \(error)")
                return
            }
            let html = String(data:data,encoding:.utf8)
            print(html)
        }.resume()
    }



}

