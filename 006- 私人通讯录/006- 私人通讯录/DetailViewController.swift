 //
//  DetailViewController.swift
//  006- 私人通讯录
//
//  Created by 张小铀 on 2017/8/12.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var nameText:UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var titleText: UITextField!

//    完成回调属性
//    闭包的返回值是可选的
//    闭包是可选的
    var completionCallBack: (()->())?
    
    var person:Person?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //判断person是否有值,如果有,设置 UI
        if person != nil {
            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
            
        }

    }


    @IBAction func savePerson(_ sender: Any) {
        
//        1.判断person是否为nil，如果是就新建
        if person == nil {
            person = Person()
        }
        
//        2.用UI 更新 person 内容
        person?.name = nameText.text
        person?.phone = phoneText.text
        person?.title = titleText.text
        
//        执行闭包回调
//        ！强行解包 （xcode 帮助修订 一定不要用 ！）
//        ？可选解包 如果闭包为 nil 就什么都不做
        completionCallBack?()
        
//        4.返回上一级界面
        navigationController?.popViewController(animated: true)
    }


}
