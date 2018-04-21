//
//  consumerPostsViewController.swift
//  Connect
//
//  Created by 伊藤修平 on 2018/04/22.
//  Copyright © 2018 3-gun. All rights reserved.
//

import UIKit

class consumerPostsViewController: UIViewController,UITextFieldDelegate {

  @IBOutlet weak var commentText: UITextField!
  override func viewDidLoad() {
        super.viewDidLoad()
        commentText.delegate = self

        // Do any additional setup after loading the view.
    }

  @IBAction func commentSend(_ sender: Any) {
    print(commentText.text!)
    self.navigationController?.popViewController(animated: true)
  }
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    // キーボードを閉じるよ！！
    
    return true
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
