//
//  productTableViewCell.swift
//  Connect
//
//  Created by 伊藤修平 on 2018/04/22.
//  Copyright © 2018 3-gun. All rights reserved.
//

import UIKit

class productTableViewCell: UITableViewCell {
  
  
  @IBOutlet weak var productImage: UIImageView!
  @IBOutlet weak var productName: UILabel!
  @IBOutlet weak var productDay: UILabel!
  @IBOutlet weak var productArea: UILabel!
  @IBOutlet weak var productCompleteFlag: UIImageView!
  

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
