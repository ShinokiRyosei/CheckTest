//
//  ViewController.swift
//  CheckTest
//
//  Created by ShinokiRyosei on 2016/11/16.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView! // 関連付けする必要あり
    
    var contentArray: [String] = [] // contentArrayがnilでない[String]になっているのに、最初にnilになっているのがダメ

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.createContents()
        tableView.delegate = self // self( ViewControllerクラス )にUITableViewDelegateがないので、追加
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    func createContents() {
        
        // for文の書き方はつねに、for-in文
        for i in 0 ..< 10 {
            
            contentArray.append(String(i)) // iはInt型なので、String型にキャスト
        }
        // ここでtableViewを更新
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contentArray.count
    }
    
    // 繰り返すcellを決めるこのメソッドが必須。
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = contentArray[indexPath.row] // indexPath.rowでcontentArrayの要素をcellに表示
        
        return cell!
    }
}

