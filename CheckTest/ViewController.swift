//
//  ViewController.swift
//  CheckTest
//
//  Created by ShinokiRyosei on 2016/11/16.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var contentArray: [String]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.createContents()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    func createContents() {
        
        for var i = 0; i < 10; i++ {
            
            contentArray.append(i)
        }
        // ここでtableViewを更新
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contentArray.count
    }
}

