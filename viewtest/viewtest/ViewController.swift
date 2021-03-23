//
//  ViewController.swift
//  viewtest
//
//  Created by 张张 on 2019/6/4.
//  Copyright © 2019 zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 60, y: 60, width: 0, height: 0)
        let view = UISwitch(frame: frame)
        view.setOn(true, animated: true)
        
        
        self.view.addSubview(view)
        
        
        
    }


}

