//
//  BookingStadiumTableViewCell.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/2/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class BookingStadiumTableViewCell: UITableViewCell {

    @IBOutlet weak var imgStadiumCover: UIImageView!
    @IBOutlet weak var lblNameStadium: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var btnBookingStadium: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
