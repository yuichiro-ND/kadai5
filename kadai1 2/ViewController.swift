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
    
    var fruits = ["みかん","りんご","バナナ","キウイ","ぶどう","スイカ","レモン","いちご","メロン","パイナップル"]
    
    var vegetables =
    ["トマト", "にんじん", "ブロッコリー", "キャベツ", "ピーマン", "レタス", "玉ねぎ", "じゃがいも", "かぼちゃ", "アスパラガス"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //buttonを押したらtableviewからlabelに表示させるためのコード
    @IBAction func button(_ sender: Any) {
        // UITextFieldに入力されたテキストを取得
        if let inputText = textField.text {
            
            // UILabelに表示するテキストを設定
            label.text = inputText
            
        }
        
    }
    //buttonを押した際に、fruitsからvegetablesに変えるためのコード
    @IBAction func button1(_ sender: UIButton) {
        fruits = vegetables
        tableView.reloadData()
    
        
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

