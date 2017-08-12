//
//  Person.swift
//  003-构造函数
//
//  Created by 张小铀 on 2017/7/26.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name:String
    
    override init() {
        name = "zhang"
        super.init()
    }

}
