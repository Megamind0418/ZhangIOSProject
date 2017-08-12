//
//  UIButton+extension.swift
//  002-加法计算器
//
//  Created by 张小铀 on 2017/8/2.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

extension UIButton{
    convenience init(title:String,color:UIColor = UIColor.darkGray){
        self.init()
        self.setTitle(title, for: UIControlState(rawValue: 0))
        self.setTitleColor(color, for: UIControlState(rawValue: 0))
        self.sizeToFit()
    }
}
