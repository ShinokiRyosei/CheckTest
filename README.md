## CheckTest

# 問題
1. `tableView`を関連付け
2. `UITableViewDelegate`をViewControllerに継承
3. `UITableViewDataSource`の`tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell`のメソッドがない
4. `tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell`でcellのインスタンスを生成
5. cellのインスタンスを生成するときに、`reusableIdentifier`を`cell`と指定
6. for-in文で10回まわす
7. `contentArray`にfor-in文のなかで、イテレータを`append`
8. イテレータを`Int`から`String`にキャスト
9. `tableView`を`reloadData`で更新
10. `contentArray`に`= []`で値を代入
11. `contentArray`のスコープを`private`から`fileprivate`もしくは、`internal`に変更
