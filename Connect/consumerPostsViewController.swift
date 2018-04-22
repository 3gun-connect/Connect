//
//  consumerPostsViewController.swift
//  Connect
//
//  Created by 伊藤修平 on 2018/04/22.
//  Copyright © 2018 3-gun. All rights reserved.
//

import UIKit

class consumerPostsViewController: UIViewController,UITextFieldDelegate {

  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var commentText: UITextField!
  override func viewDidLoad() {
        super.viewDidLoad()
        commentText.delegate = self
    
    /*let scrollView = UIScrollView()
    scrollView.frame = CGRect(x: 0.0, y: -150.0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width * 2, height: UIScreen.main.bounds.height)
    scrollView.isPagingEnabled = true*/
    
    // 1枚目の画像
    let firstImageView = UIImageView(image: UIImage(named: "nasu"))
    firstImageView.frame = CGRect(x: UIScreen.main.bounds.width * 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    firstImageView.contentMode = UIViewContentMode.scaleAspectFit
    scrollView.addSubview(firstImageView)
    
    // 2枚目の画像
    let secondImageView = UIImageView(image: UIImage(named: "Testnegi"))
    secondImageView.frame = CGRect(x: UIScreen.main.bounds.width * 1.0, y: 0.0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    secondImageView.contentMode = UIViewContentMode.scaleAspectFit
    scrollView.addSubview(secondImageView)
    
    // スクロールビューを追加
    //self.view.addSubview(scrollView)

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
