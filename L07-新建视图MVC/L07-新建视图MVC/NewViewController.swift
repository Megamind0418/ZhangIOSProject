//
//  NewViewController.swift
//  L07-新建视图MVC
//
//  Created by 张小铀 on 2017/9/28.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    var viewController:ViewController?
    var labelTxt = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purple
        let label = UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.text = labelTxt
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.setTitle("close", for: UIControlState())
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(NewViewController.dismissSelf), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func dismissSelf(){
            viewController?.label.text = "返回的参数"
            self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
