//
//  ViewController.swift
//  UsingNib
//
//  Created by 张小铀 on 2017/6/4.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func nextbtn(_ sender: Any) {
        let vc = MyViewController()
        vc.labelcontent = input.text!
        self.present(vc, animated: true, completion: nil)
        
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

