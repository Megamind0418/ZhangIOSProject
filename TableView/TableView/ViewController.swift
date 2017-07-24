//
//  ViewController.swift
//  TableView
//
//  Created by 张小铀 on 2017/7/9.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "hello~~~ \(indexPath.row)"
         return cell
    }
    
    func setupUI(){
        let tv = UITableView(frame: view.bounds, style: .plain)
         view.addSubview(tv)
        //注册可重用cell
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        //注册数据源,swift没有遵守协议是错误
        tv.dataSource = self
        
    }


}

