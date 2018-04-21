//
//  userHomeController.swift
//  Connect
//
//  Created by 伊藤修平 on 2018/04/21.
//  Copyright © 2018 3-gun. All rights reserved.
//

import UIKit

class userHomeController: UIViewController , UITableViewDataSource,UITableViewDelegate{
  
  @IBOutlet weak var productTable: UITableView!
  
  //テーブルに表示するデータを配列で管理
  //配列の中にタプルを格納
  var productList : [(image:String,name:String,day:String,area:String,flag:Bool)] = []
  

    override func viewDidLoad() {
        super.viewDidLoad()
        productTable.dataSource = self
        productTable.delegate = self
      
      
      
        //配列の初期化
        self.productList.removeAll()
        //仮の表示用データ
        let product = ("Testnegi","田中　健","2018/09/11","東京都調布市TOP",true)
        self.productList.append(product)
    }
  
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return productList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = productTable.dequeueReusableCell(withIdentifier: "productCell",for: indexPath) as! productTableViewCell
    cell.productName?.text = productList[indexPath.row].name
    cell.productImage?.image = UIImage(named: "Testnegi")
    cell.productDay?.text = productList[indexPath.row].day
    cell.productArea?.text = productList[indexPath.row].area
    return cell
  }
  
  
  //Cellが選択された際に呼び出されるメソッド
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("test")
    tableView.deselectRow(at: indexPath, animated: true)
    
    self.performSegue(withIdentifier: "toConsumerPosts", sender: nil)
  }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
