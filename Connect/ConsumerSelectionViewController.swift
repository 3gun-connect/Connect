//
//  ConsumerSelectionViewController.swift
//  Connect
//
//  Created by 杉岡 成哉 on 2018/04/22.
//  Copyright © 2018年 3-gun. All rights reserved.
//

import UIKit

class ConsumerSelectionViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

  @IBOutlet weak var yasaiNameLabel: UILabel!
  @IBOutlet weak var consumerTableView: UITableView!
  var nameLabel:String?
  var consumerList : [(name:String,flag:Bool)] = []
  
  
  
  
  override func viewDidLoad() {
        super.viewDidLoad()
        consumerTableView.dataSource = self
        consumerTableView.delegate = self
        yasaiNameLabel.text = nameLabel!
    
        self.consumerList.removeAll()
        let consumer = ("齋藤飛鳥",false)
        self.consumerList.append(consumer)
        self.consumerTableView.reloadData()

        // Do any additional setup after loading the view.
    }
  
  
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return consumerList.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = consumerTableView.dequeueReusableCell(withIdentifier: "consumerCell", for: indexPath)
      cell.textLabel?.text = consumerList[indexPath.row].name
      return cell
    }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    consumerTableView.deselectRow(at: indexPath, animated: true)
    self.performSegue(withIdentifier: "toEvaluationScreen", sender: nil)
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
