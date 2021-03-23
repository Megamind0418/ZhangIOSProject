//
//  DetailViewController.swift
//  PC_practice
//
//  Created by 张张 on 2019/3/17.
//  Copyright © 2019 zhang. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var titleText: UITextField!
    
    var person:Person?
    
    var completionCallBack:(()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if person != nil{
            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
        }else{
            print("person is nil")
        }


    }

    
    @IBAction func savePerson(_ sender: Any) {
        
        if person == nil {
            person = Person()
        }
        person?.name = nameText.text
        person?.phone = phoneText.text
        person?.title = titleText.text
        
        completionCallBack?()
        
        navigationController?.popViewController(animated: true)
    }
    
    
    
}
