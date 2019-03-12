 //
//  ListTableViewController.swift
//  007PrivateContact
//
//  Created by 张张 on 2019/3/7.
//  Copyright © 2019 zhang. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        loadData { (<#[Person]#>) in
            <#code#>
        }
    }

    //    模拟异步,利用闭包回调
    private func loadData(completion:@escaping (_ list:[Person])->()) -> (){
        DispatchQueue.global().async {
            print("正在加载中....")
            
            Thread.sleep(forTimeInterval: 1)

            var arrayM = [Person]()


            for i in 0..<20{
                let p = Person()
                
                p.name = "zhangsan - \(i)"
                p.phone = "1560"+String.init(format: "%06d", arc4random_uniform(1000000))
                p.title = "boss"
                
                arrayM.append(p)
            }
            
            
            //            主线程回调
            DispatchQueue.main.async(execute: {
                completion(arrayM)
            })
        }
    }
    
 }
