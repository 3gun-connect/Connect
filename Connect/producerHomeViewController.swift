//
//  producerHomeViewController.swift
//  Connect
//
//  Created by 杉岡 成哉 on 2018/04/22.
//  Copyright © 2018年 3-gun. All rights reserved.
//

import UIKit

class producerHomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

  @IBOutlet weak var yasaiTableView: UITableView!
  var yasaiList : [(image:String,name:String)] = []
  
  override func viewDidLoad() {
        super.viewDidLoad()
        yasaiTableView.dataSource = self
        yasaiTableView.delegate = self
        self.yasaiList.removeAll()
        let yasai = ("Testnegi","ネギ")
        self.yasaiList.append(yasai)

        // Do any additional setup after loading the view.
    }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return yasaiList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = yasaiTableView.dequeueReusableCell(withIdentifier: "yasaiCell", for: indexPath)
    cell.textLabel?.text = yasaiList[indexPath.row].name
    cell.imageView?.image = UIImage(named: yasaiList[indexPath.row].image)
    return cell
  }
  
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    yasaiTableView.deselectRow(at: indexPath, animated: true)
    self.performSegue(withIdentifier: "toConsumerSelection", sender: yasaiList[indexPath.row].name)
    
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
