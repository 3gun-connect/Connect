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
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func moveUserHome(_ sender: Any) {
    self.performSegue(withIdentifier: "toUserHome", sender: nil)
  }
  
}

