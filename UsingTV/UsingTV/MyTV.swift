//
//  MyTV.swift
//  UsingTV
//
//  Created by 张小铀 on 2017/6/4.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import UIKit

class MyTV: UITableView,UITableViewDataSource{
    let TAG_CELL_LABEL = 1
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let label = cell?.viewWithTag(TAG_CELL_LABEL) as! UILabel
        label.text = "zhang"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}
