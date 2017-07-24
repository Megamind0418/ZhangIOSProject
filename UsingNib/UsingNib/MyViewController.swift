//
//  MyViewController.swift
//  UsingNib
//
//  Created by 张小铀 on 2017/6/4.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
   
    
    @IBOutlet  var MyLabel: UILabel!
    @IBAction func backbtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        MyLabel.text = labelcontent
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var labelcontent = ""
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
