//
//  ViewController.swift
//  Connect
//
//  Created by 伊藤修平 on 2018/04/21.
//  Copyright © 2018 3-gun. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController ,UITextFieldDelegate{
  
  @IBOutlet weak var loginId: UITextField!
  @IBOutlet weak var pass: UITextField!
  
  //  let rootRef = Database.database().reference()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loginId.delegate = self
    pass.delegate = self
  }
  
//  override func viewDidAppear(_ animated: Bool) {
//    super.viewDidAppear(animated)
//    
//    // 子ノード condition への参照
//    let conditionRef = rootRef.child("condition")
//    // クラウド上で、ノード condition に変更があった場合のコールバック処理
//    conditionRef.observe(.value) { (snap: DataSnapshot) in
//      print("ノードの値が変わりました！: \((snap.value as AnyObject).description)")
//    }
//  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  @IBAction func moveHome(_ sender: Any) {
    let searchoginId = self.loginId.text!
    if searchoginId == "G015C"{
      self.performSegue(withIdentifier: "toUserHome", sender: nil)
    }else if searchoginId == "G015F"{
      self.performSegue(withIdentifier: "toProducerHome", sender: nil)
    }
    
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
  loginId.resignFirstResponder()
  pass.resignFirstResponder()
  // キーボードを閉じるよ！！
  
  return true
  }
  
  override func viewWillAppear(_ animated: Bool) {
    self.navigationController?.setNavigationBarHidden(true, animated: true)
  }
  
  
  
}

