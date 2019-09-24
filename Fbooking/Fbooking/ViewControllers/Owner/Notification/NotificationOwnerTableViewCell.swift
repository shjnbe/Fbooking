//
//  NotificationOwnerTableViewCell.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/23/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class NotificationOwnerTableViewCell: UITableViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblTeamName: UILabel!
    @IBOutlet weak var lblContent: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
