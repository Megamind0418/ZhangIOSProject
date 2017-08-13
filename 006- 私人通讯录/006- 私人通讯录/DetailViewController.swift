 //
//  DetailViewController.swift
//  006- 私人通讯录
//
//  Created by 张小铀 on 2017/8/12.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var titleText: UITextField!
    
    var person:Person?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //判断person是否有值,如果有,设置 UI
        if person != nil{
            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
            
        }

    }

    @IBAction func savePerson(_ sender: Any) {
    }


}
