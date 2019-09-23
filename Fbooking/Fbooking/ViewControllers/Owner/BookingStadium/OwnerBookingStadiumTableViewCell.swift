//
//  OwnerBookingStadiumTableViewCell.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/23/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class OwnerBookingStadiumTableViewCell: UITableViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhoneNumber: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    
    @IBOutlet weak var lblTimeBooking: UILabel!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnAccept: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
