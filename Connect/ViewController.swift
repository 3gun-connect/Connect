//
//  ViewController.swift
//  Connect
//
//  Created by 伊藤修平 on 2018/04/21.
//  Copyright © 2018 3-gun. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
  
  let rootRef = Database.database().reference()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    // 子ノード condition への参照
    let conditionRef = rootRef.child("condition")
    // クラウド上で、ノード condition に変更があった場合のコールバック処理
    conditionRef.observe(.value) { (snap: DataSnapshot) in
      print("ノードの値が変わりました！: \((snap.value as AnyObject).description)")
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func moveUserHome(_ sender: Any) {
    self.performSegue(withIdentifier: "toUserHome", sender: nil)
  }
  
}

