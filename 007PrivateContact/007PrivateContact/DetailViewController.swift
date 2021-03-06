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
    
//    完成回调属性
//    闭包是可选的
    var completionCallBack:(()->())?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//      判断 person 是否有值,如果有则设置 联系人列表数据到明细界面UI
        if person != nil{
            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
        }
        
        
    }  

//   保存按钮
    @IBAction func savePerson(_ sender: Any) {
        
//        判断 person 是否为空,是则新建,在新建联系人的时候,person 会为空,而不是一开始创建出来的联系人.
        if person == nil {
            person = Person()
        }
        
//        用 UI 更新 personn 的内容
        person?.name = nameText.text
        person?.phone = phoneText.text
        person?.title = titleText.text
        
//        执行闭包回调
        completionCallBack?()
        
//          返回上一级界面
        navigationController?.popViewController(animated: true)
    }
    
    
}
