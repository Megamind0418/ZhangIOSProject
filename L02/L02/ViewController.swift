//
//  ViewController.swift
//  L02
//
//  Created by 张小铀 on 2017/5/20.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var wv:UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        wv.loadRequest(URLRequest(url: URL(string:"http://baidu.com")!))
        wv.loadRequest(URLRequest(url: URL(string:"http://baidu.com")!))
//        let url1=URL(string:"http://baidu.com")
//        let requestObj=URLRequest(url: url1!)
//        wv.loadRequest(requestObj)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

