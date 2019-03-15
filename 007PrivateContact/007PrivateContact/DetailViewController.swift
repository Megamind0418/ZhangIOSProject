//
//  DetailViewController.swift
//  007PrivateContact
//
//  Created by 张张 on 2019/3/7.
//  Copyright © 2019 zhang. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var titleText: UITextField!
    
    
    var person:Person?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//      判断 person 是否有值,如果有则设置 UI
        if person != nil{
            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
        }
        
        
    }  

   
    @IBAction func savePerson(_ sender: Any) {
    }
    
    
}
