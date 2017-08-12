//
//  UILabel+extension.swift
//  002-加法计算器
//
//  Created by 张小铀 on 2017/8/2.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

extension UILabel{
    convenience init(frame:CGRect,text:String){
        self.init(frame:frame)
        self.text = text
  
    }
}
