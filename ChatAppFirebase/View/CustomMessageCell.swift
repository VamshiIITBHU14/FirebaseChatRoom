//
//  CustomMessageCell.swift
//  ChatAppFirebase
//
//  Created by Priyanka Pote on 24/11/17.
//  Copyright © 2017 VamshiKrishna. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell {
    
    
    @IBOutlet var messageBackground: UIView!
    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var messageBody: UILabel!
    @IBOutlet var senderUsername: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
