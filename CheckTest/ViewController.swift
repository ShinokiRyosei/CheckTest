//
//  ViewController.swift
//  CheckTest
//
//  Created by ShinokiRyosei on 2016/11/16.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! // 関連付けする必要あり
    
    // contentArrayがprivateだとextensionにスコープが及ばない
    // contentArrayがnilでない[String]になっているのに、最初にnilになっているのがダメ
    fileprivate var contentArray: [String] = []
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.createContents()
        tableView.delegate = self // self( ViewControllerクラス )にUITableViewDelegateがないので、追加
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    func createContents() {
        
        // for文を10回まわして、contentArrayに0~9を順に追加
        for i in 0 ..< 10 {
            
            // appendで配列に要素を追加
            // iはInt型なので、String型にキャスト
            contentArray.append(String(i))
        }
        // for文のスコープを向けたところでtableViewを更新
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
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

