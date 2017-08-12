//
//  ViewController.swift
//  002-加法计算器
//
//  Created by 张小铀 on 2017/7/24.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

//加法计算器实现步骤
// 1.代码构建布局 setupUI()
// 2.定义属性，记录属性
// 3.转化数值
// 4.处理计算结果

 
class ViewController: UIViewController {
//定义属性
    var numText1:UITextField?
    var numText2:UITextField?
    var resultLabel:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

//  计算结果
    func calc(){
        print(#function)
        print("\(numText1?.text) ~~~ \(numText2?.text)")
        
//        将文本框的内容转换为数值
//        Int？如果文本框内容不是数字 Int 之后是 nil
       guard   let num1 = Int(numText1?.text ?? ""),
               let num2 = Int(numText2?.text ?? "") else{
            
                    print("必须都输入数字")
                    return
        }
//        处理计算结果
         resultLabel?.text = "\(num1+num2)"
    }
    
    func setupUI() -> () {
//         1.两个textfield
//        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
//        tf1.borderStyle = .roundedRect
//        tf1.text = "0"
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30),
                              placeholder: "0")
        view.addSubview(tf1)
        
//        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
//        tf2.borderStyle = .roundedRect
//        tf2.text = "0"
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30),
                              placeholder: "0")
        
        view.addSubview(tf2)
        
//        记录属性
            numText1 = tf1
            numText2 = tf2
        
//         2.三个label
//        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
//        l1.text = "+"
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30), text: "+")
        l1.textAlignment = .center
        view.addSubview(l1)
        
//        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
//        l2.text = "="
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30), text: "=")
        l2.textAlignment = .center
        view.addSubview(l2)
        
//        let l3 = UILabel(frame: CGRect(x: 250, y: 20, width: 60, height: 30))
//        l3.text = "0"
        let l3 = UILabel(frame: CGRect(x: 250, y: 20, width: 60, height: 30), text: "0")
        l3.textAlignment = .right
        view.addSubview(l3)
        
        resultLabel = l3
        
//         3.一个button
        let btn = UIButton(title: "confirm")
//        btn.setTitle("confirm", for: UIControlState(rawValue: 0))
//        btn.setTitleColor(UIColor.black, for: UIControlState(rawValue: 0))
//        btn.sizeToFit()
        btn.center = view.center
        view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(calc), for: .touchUpInside)
    }


}

