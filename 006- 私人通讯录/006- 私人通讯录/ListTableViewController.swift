//
//  ListTableViewController.swift
//  006- 私人通讯录
//
//  Created by 张小铀 on 2017/8/12.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    ///联系人数组
    var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData { (list) in
            print(list)
            
            //拼接数组,闭包中定义好的代码在需要的时候执行,需要 self. 指定语境
            self.personList += list
            
            //刷新表格
            self.tableView.reloadData()
        }
    }

    ///模拟异步,利用闭包回调
    private func loadData(completion:@escaping (_ list:[Person])->() ) ->(){
        DispatchQueue.global().async {
            print("正在努力加载中...")
            Thread.sleep(forTimeInterval: 1)
            
            var arrayM = [Person]()
            
            for i in 0..<20 {
                let p = Person()
                
                p.name = "zhang - \(i)"
                p.phone = "1560" + String(format: "%07d", arc4random_uniform(10000000))
//                %07d 打印7个字符,不足用0补充
//                arc4random_uniform会随机返回一个0到上界之间(不含上界)的整数
                p.title = "boss"
                
                arrayM.append(p)
                
            }
            //主线程回调
            DispatchQueue.main.async(execute: { 
                //回调,执行闭包
                completion(arrayM)
            })
        }
    }
    
    // MARK: - 数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        
        return cell
    }
    
}
