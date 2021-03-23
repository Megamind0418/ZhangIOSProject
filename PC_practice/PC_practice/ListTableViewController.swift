//
//  ListTableViewController.swift
//  PC_practice
//
//  Created by 张张 on 2019/3/17.
//  Copyright © 2019 zhang. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var personList = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData { (list) in
            print(list)
            
            self.personList += list
            self.tableView.reloadData()
        }

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetailViewController

        if let indexPath = sender as? IndexPath{
            vc.person = personList[indexPath.row]
//            vc.completionCallBack = {
//                self.tableView.reloadRows(at: [indexPath], with: .automatic)
//            }
        }
//        else{
//            vc.completionCallBack = {
//                guard let p = vc.person else
//                {
//                    return
//                }
//                self.personList.insert(p, at: 0)
//                self.tableView.reloadData()
//            }
//        }
    }
    
    
    
    func loadData(completion:@escaping (_ list:[Person])->()) -> () {
        DispatchQueue.global().async {
            print("正在加载中...")
            Thread.sleep(forTimeInterval: 1)
            
            var arrayM = [Person]()
            
            for i in 1...20{
                let p = Person()
                
                p.name = "zhang\(i)"
                p.phone = "1234"+String.init(format: "%06d", arc4random_uniform(100000))
                p.title = "boss\(i)"
                
                arrayM.append(p)
            }
            
            DispatchQueue.main.async(execute: {
            completion(arrayM)
            })
            
    
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "list2detail", sender: indexPath)
    }
    
    
    
    
    
    @IBAction func newPerson(_ sender: Any) {
        performSegue(withIdentifier: "list2detail", sender: nil)
    }
 
    
}
