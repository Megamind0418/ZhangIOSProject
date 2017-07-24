//
//  ViewController.swift
//  L05
//
//  Created by 张小铀 on 2017/5/27.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var urlInput:UITextField!
    @IBOutlet var wv:UIWebView!
    @IBOutlet var btnGo:UIButton!
    
   @IBAction func btnClicked(sender:AnyObject){
//        wv.loadRequest(URLRequest(url:URL(string: urlInput.text!)!))
    wv.loadRequest(URLRequest(url: URL(string:urlInput.text!)!))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

