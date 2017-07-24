//
//  ViewController.swift
//  OSAndSwift
//
//  Created by 张小铀 on 2017/5/20.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      let h = Hello()
        h.say()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

