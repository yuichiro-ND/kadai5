//
//  ViewController.swift
//  kadai1
//
//  Created by Apple on 2023/04/26.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var fruits = ["みかん","りんご","バナナ","キウイ","ブドウ","スイカ","レモン","いちご","メロン","パイナップル"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // buttonを押したらtableviewからlabelに表示させるためのコード
    @IBAction func button(_ sender: Any) {
        // UITextFieldに入力されたテキストを取得
        if let inputText = textField.text {
            // UILabelに表示するテキストを設定
            label.text = inputText
            // fruits配列に追加
            fruits.append(inputText)
            // tableViewを更新
            tableView.reloadData()
        }
    }
}

// TableViewについてのコードはこちらに記述する。
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = fruits[indexPath.row]
        return cell
    }
}
