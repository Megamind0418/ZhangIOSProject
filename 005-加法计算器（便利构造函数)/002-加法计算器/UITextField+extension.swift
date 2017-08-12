//
//  UITextField+extension.swift
//  002-加法计算器
//
//  Created by 张小铀 on 2017/8/2.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

extension UITextField{
    convenience init(frame:CGRect,placeholder:String,fontsize:CGFloat = 14){
        self.init(frame:frame)
        self.borderStyle = .roundedRect
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: fontsize)
        
    }
}


