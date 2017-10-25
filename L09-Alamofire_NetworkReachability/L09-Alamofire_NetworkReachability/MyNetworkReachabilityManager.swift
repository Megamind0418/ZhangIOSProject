//
//  MyNetworkReachabilityManager.swift
//  L09-Alamofire_NetworkReachability
//
//  Created by 张张 on 2017/10/25.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit
import Alamofire

class MyNetworkReachabilityManager{
    private static let sharedInstance = MyNetworkReachabilityManager()
    var manager = NetworkReachabilityManager(host:"www.baidu,com")
    
    init() {
        manager?.listener = { status in
            print("Network status changed:\(status)")
        }
        manager?.startListening()
    }
    class var sharedManager:MyNetworkReachabilityManager{
        let instance = self.sharedInstance
        return instance
    }
    
    func networkReachabilityStatus() -> Alamofire.NetworkReachabilityManager.NetworkReachabilityStatus {
        let status:Alamofire.NetworkReachabilityManager.NetworkReachabilityStatus =
        (manager?.networkReachabilityStatus)!
        print("当前网络状态\(status)")
        return status
    }
}
