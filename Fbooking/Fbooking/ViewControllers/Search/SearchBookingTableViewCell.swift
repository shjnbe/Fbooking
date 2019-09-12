//
//  SearchBookingTableViewCell.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/2/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class SearchBookingTableViewCell: UITableViewCell {

    @IBOutlet weak var imgStatiumCover: UIImageView!
    @IBOutlet weak var btnBookingStadium: UIButton!
    @IBOutlet weak var lblStadiumName: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
