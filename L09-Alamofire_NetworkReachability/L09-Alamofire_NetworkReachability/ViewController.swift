//
//  ViewController.swift
//  L09-Alamofire_NetworkReachability
//
//  Created by 张张 on 2017/10/25.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func touchupInsideCheckBtnAction(_ sender: UIButton) {
        var message = "当前无网络"
        let status:NetworkReachabilityManager.NetworkReachabilityStatus =
        MyNetworkReachabilityManager.sharedManager.networkReachabilityStatus()
        
        switch status {
        case .notReachable:
            message = "当前无网络"
            print("当前无网络")
            break
        case .reachable(NetworkReachabilityManager.ConnectionType.ethernetOrWiFi):
            message = "当前为wifi网络"
            print("是WiFi网络")
            break
        case .reachable(NetworkReachabilityManager.ConnectionType.wwan):
            message = "3G 或者 4G"
            print("3G 或者 4G ")
            break
        default:
            message = "当前无网络"
            break
        }
        
        let alert = UIAlertController(title: "Information", message: message, preferredStyle: UIAlertControllerStyle.alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(OKAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}

