//
//  ViewController.swift
//  L02
//
//  Created by 张小铀 on 2017/5/20.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.brown
        label = UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.text = ""
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.setTitle("打开新的视图控制器", for: UIControlState())
        button.backgroundColor=UIColor.black
        
        self.view.addSubview(button)
    
    }
    
    func openViewController(){
        let newViewController = 
        newViewController.
        
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

