 //
//  ListTableViewController.swift
//  007PrivateContact
//
//  Created by 张张 on 2019/3/7.
//  Copyright © 2019 zhang. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

//    联系人数组
    var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        loadData { (list) in
            print(list )
//            '拼接'数组,闭包中定义好的代码在需要的时候执行,需要 self.指定语境
            self.personList += list
//            刷新表格
            self.tableView.reloadData()
        }
    }

    //    模拟异步,利用闭包回调
    private func loadData(completion:@escaping (_ list:[Person])->()) -> (){
        DispatchQueue.global().async {
            print("正在加载中....")
            
            Thread.sleep(forTimeInterval: 1)

            var arrayM = [Person]()


            for i in 1...20{
                let p = Person()
                
                p.name = "zhangsan - \(i)"
                p.phone = "1560"+String.init(format: "%06d", arc4random_uniform(1000000))
                p.title = "boss\(i)"
                
                arrayM.append(p)
            }
            
            
            //   尾随闭包  嵌套的gcd Xcode 不会改成尾随闭包      主线程回调
            DispatchQueue.main.async(execute: {
                completion(arrayM)
            })
        }
    }
    
//   新建按钮
    @IBAction func newPerson(_ sender: Any) {
        performSegue(withIdentifier: "list2detail", sender: nil)
    }
    
    
    
    //    MARK: - 控制器跳转方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        类型转换 as
//        swift 中 String 之外,绝大多数使用 as 需要 ? / !
//        chiwanel you
        let vc = segue.destination as! DetailViewController
        
//        设置选择的 person,indexPath
        if let indexPath = sender as? IndexPath{
//            indexPath 一定有值
            vc.person = personList[indexPath.row]
            
//            设置编辑完成的闭包
            vc.completionCallBack = {
                self.tableView.reloadRows(at: [indexPath], with: .automatic)
            }
        }else{
//            新建个人记录
            vc.completionCallBack = {
                
                //            1.获取明细控制器的 person
                guard let p = vc.person else {
                    return
                }
                //            2.插入到数组顶部
                self.personList.insert(p, at: 0)
                
                //            3.刷新表格
                self.tableView.reloadData()
            }
            

        }
    }
    
    //    MARK: - 代理方法 跳转到明细界面
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        执行segue
        performSegue(withIdentifier: "list2detail", sender: indexPath)
    }
    
    //    MARK: - 数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)

        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone

        return cell
    }
    
 }
