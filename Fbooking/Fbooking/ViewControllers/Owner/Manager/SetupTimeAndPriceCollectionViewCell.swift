//
//  SetupTimeAndPriceCollectionViewCell.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/21/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class SetupTimeAndPriceCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblParentStadiumName: UILabel!
    @IBOutlet weak var viewActive: UIView!
    override var isSelected: Bool {
        didSet {
            self.lblParentStadiumName.textColor = isSelected ? UIColor(hexString: "7EAF43",alpha: 1) : UIColor.black
            self.viewActive.isHidden = isSelected ? false : true
        }
    }
}
