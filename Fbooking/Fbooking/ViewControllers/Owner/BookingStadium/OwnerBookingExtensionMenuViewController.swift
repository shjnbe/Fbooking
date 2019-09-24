//
//  OwnerBookingExtensionMenuViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/23/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class OwnerBookingExtensionMenuViewController: UIViewController {

    @IBOutlet weak var viewTap: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onTapOtherView(_:)))
        viewTap.addGestureRecognizer(tap)
    }
    @objc func onTapOtherView(_ sender:UITapGestureRecognizer){
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }

}
