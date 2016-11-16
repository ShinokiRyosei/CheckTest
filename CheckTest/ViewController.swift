//
//  ViewController.swift
//  CheckTest
//
//  Created by ShinokiRyosei on 2016/11/16.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var contentArray: [String] = []

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.createContents()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    func createContents() {
        
        for i in 0 ..< 10 {
            
            contentArray.append(String(i))
        }
        // ここでtableViewを更新
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = contentArray[indexPath.row]
        
        return cell!
    }
}

